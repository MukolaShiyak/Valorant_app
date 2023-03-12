import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '/src/config/routes/app_router.dart';
import '/src/config/routes/app_routes.dart';

class AppNavigationDrawer extends HookWidget {
  const AppNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const String agentsDrawerRoute = AppRoutes.root;
    const String gunsDrawerRoute = AppRoutes.gunsList;

    return NavigationDrawer(
      children: [
        TextButton(
            onPressed: () {
              if (AppRouter.currentRouteName == agentsDrawerRoute) return;

              Navigator.of(context).pushReplacementNamed(agentsDrawerRoute);
            },
            child: Text(
              'Agents',
              style: TextStyle(
                fontWeight: AppRouter.currentRouteName == agentsDrawerRoute
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            )),
        TextButton(
            onPressed: () {
              if (AppRouter.currentRouteName == gunsDrawerRoute) return;

              Navigator.of(context).pushReplacementNamed(gunsDrawerRoute);
            },
            child: Text(
              'Guns',
              style: TextStyle(
                fontWeight: AppRouter.currentRouteName == gunsDrawerRoute
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            )),
      ],
    );
  }
}
