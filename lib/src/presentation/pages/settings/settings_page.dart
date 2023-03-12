import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '/src/presentation/blocs/settings/settings_bloc.dart';
import '/src/presentation/widgets/app_bars/main_app_bar.dart';
import '/src/presentation/widgets/layouts/main_page_layout.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      appBar: MainAppBar(title: 'Settings'),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'App Theme',
                    ),
                    Switch(
                      value: state.isDarkTheme,
                      onChanged: (_) {
                        context.read<SettingsBloc>().add(SwitchThemeEvent());
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('Music On'),
                    Checkbox(value: false, onChanged: (_) {}),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
