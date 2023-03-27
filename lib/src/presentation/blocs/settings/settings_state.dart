part of 'settings_bloc.dart';

class SettingsState {
  final bool isDarkTheme;
  final bool isAudioPlaying;
  final double volume;
  final double prevVolume;

  SettingsState({
    required this.isDarkTheme,
    required this.isAudioPlaying,
    required this.volume,
    required this.prevVolume,
  });

  SettingsState copyWith({
    bool? isDarkTheme,
    bool? isAudioPlaying,
    double? volume,
    double? prevVolume,
  }) {
    return SettingsState(
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
      isAudioPlaying: isAudioPlaying ?? this.isAudioPlaying,
      volume: volume ?? this.volume,
      prevVolume: prevVolume ?? this.prevVolume,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDarkTheme': isDarkTheme,
      'isAudioPlaying': isAudioPlaying,
      'volume': volume,
      'prevVolume': prevVolume,
    };
  }

  factory SettingsState.fromMap(Map<String, dynamic> map) {
    return SettingsState(
      isDarkTheme: map['isDarkTheme'] as bool,
      isAudioPlaying: map['isAudioPlaying'] as bool,
      volume: map['volume'] as double,
      prevVolume: map['prevVolume'] as double,
    );
  }
  String toJson() => converter.json.encode(toMap());

  factory SettingsState.fromJson(String source) {
    return SettingsState.fromMap(
        converter.json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() =>
      'SettingsState(appTheme: $isDarkTheme, isAudioPlaying: $isAudioPlaying, volume: $volume, prevVolume: $prevVolume)';
}
