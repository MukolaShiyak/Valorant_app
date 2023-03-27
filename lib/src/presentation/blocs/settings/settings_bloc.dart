import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:convert' as converter;

import '/src/core/services/audio_player_service/iaudio_player.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState>
    with HydratedMixin {
  final IAudioPlayer audioPlayer;

  SettingsBloc(this.audioPlayer)
      : super(SettingsState(
          isDarkTheme: false,
          isAudioPlaying: true,
          volume: 0.5,
          prevVolume: 0.5,
        )) {
    on<SwitchThemeEvent>(_switchTheme);
    on<SwitchAudioPlayerStatus>(_switchAudioPlayerStatus);
    on<ChangeAudioVolumeStatus>(_changeAudioVolumeStatus);

    audioPlayer.inizializeAudioPlayer();
    audioPlayer.setVolume(state.volume);
    if (state.isAudioPlaying) {
      audioPlayer.play();
    } else {
      audioPlayer.setVolume(0);
    }
  }

  void _switchTheme(SwitchThemeEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(isDarkTheme: !state.isDarkTheme));
  }

  void _switchAudioPlayerStatus(
      SwitchAudioPlayerStatus event, Emitter<SettingsState> emit) {
    if (state.isAudioPlaying) {
      emit(state.copyWith(prevVolume: state.volume));
      emit(state.copyWith(isAudioPlaying: false, volume: 0));
      audioPlayer.setVolume(0);
    } else {
      if (state.volume > 0) {
        emit(state.copyWith(isAudioPlaying: true, volume: state.volume));
        audioPlayer.setVolume(state.volume);
      } else {
        emit(state.copyWith(isAudioPlaying: true, volume: state.prevVolume));
        audioPlayer.setVolume(state.prevVolume);
      }
    }
  }

  void _changeAudioVolumeStatus(
      ChangeAudioVolumeStatus event, Emitter<SettingsState> emit) {
    emit(state.copyWith(volume: event.volume));
    if (event.volume > 0) {
      emit(state.copyWith(isAudioPlaying: true));
    } else {
      emit(state.copyWith(isAudioPlaying: false));
    }
    audioPlayer.setVolume(event.volume);
  }

  @override
  SettingsState fromJson(Map<String, dynamic> json) {
    return SettingsState.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson(SettingsState state) {
    addError(Exception('Couldnt write to a storage'), StackTrace.current);
    return state.toMap();
  }
}
