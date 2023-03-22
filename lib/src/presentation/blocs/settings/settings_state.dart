part of 'settings_bloc.dart';

class SettingsState {
  final bool isDarkTheme;

  SettingsState({
    required this.isDarkTheme,
  });

  SettingsState copyWith({
    bool? isDarkTheme,
  }) {
    return SettingsState(
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDarkTheme': isDarkTheme,
    };
  }

  factory SettingsState.fromMap(Map<String, dynamic> map) {
    return SettingsState(
      isDarkTheme: map['isDarkTheme'] as bool,
    );
  }
  String toJson() => converter.json.encode(toMap());

  factory SettingsState.fromJson(String source) {
    return SettingsState.fromMap(
        converter.json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() => 'SettingsState(appTheme: $isDarkTheme)';
}
