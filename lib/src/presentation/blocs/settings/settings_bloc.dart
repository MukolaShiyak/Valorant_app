import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:convert' as converter;

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SwitchThemeEvent, SettingsState>
    with HydratedMixin {
  SettingsBloc() : super(SettingsState(isDarkTheme: false)) {
    on<SwitchThemeEvent>(_switchTheme);
  }

  void _switchTheme(SwitchThemeEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(isDarkTheme: !state.isDarkTheme));
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
