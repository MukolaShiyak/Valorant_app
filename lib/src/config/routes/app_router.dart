import 'package:flutter/material.dart';

import 'app_routes.dart';
import '/src/presentation/pages/agents_list/agents_list_page.dart';
import '/src/presentation/pages/agent_details/agent_details_page.dart';
import '/src/presentation/pages/guns_list/guns_list_page.dart';
import '/src/presentation/pages/gun_details/gun_details_page.dart';
import '/src/presentation/pages/settings/settings_page.dart';

class AppRouter {
  static String _currentRouteName = '';

  static String get currentRouteName => _currentRouteName;

  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == _currentRouteName) return null;

    switch (settings.name) {
      case AppRoutes.root:
        _currentRouteName = AppRoutes.root;
        return _materialRoute(const AgentsListPage());

      case AppRoutes.agentDetails:
        _currentRouteName = AppRoutes.agentDetails;
        return _materialRoute(const AgentDetailsPage());

      case AppRoutes.gunsList:
        _currentRouteName = AppRoutes.gunsList;
        return _materialRoute(const GunsListPage());

      case AppRoutes.gunDetails:
        _currentRouteName = AppRoutes.gunDetails;
        return _materialRoute(const GunDetailsPage());

      case AppRoutes.appSettings:
        return _materialRoute(const SettingsPage());

      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
