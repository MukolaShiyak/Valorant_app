import 'package:flutter/material.dart';

import 'app_routes.dart';
import '/src/presentation/pages/agents_list/agents_list_page.dart';
import '/src/presentation/pages/agent_details/agent_details_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.root:
        return _materialRoute(const AgentsListPage());

      case AppRoutes.agentDetails:
        return _materialRoute(const AgentDetailsPage());

      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
