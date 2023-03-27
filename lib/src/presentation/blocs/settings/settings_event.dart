part of 'settings_bloc.dart';

abstract class SettingsEvent {}

@immutable
class SwitchThemeEvent extends SettingsEvent {}

@immutable
class SwitchAudioPlayerStatus extends SettingsEvent {}

@immutable
class ChangeAudioVolumeStatus extends SettingsEvent {
  double volume;
  ChangeAudioVolumeStatus({this.volume = 0.5});
}
