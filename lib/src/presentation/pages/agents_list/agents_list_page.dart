import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '/src/config/routes/app_routes.dart';
import '/src/core/utils/constants.dart';
import '/src/presentation/widgets/app_bars/main_app_bar.dart';
import '/src/presentation/widgets/layouts/main_page_layout.dart';
import '/src/presentation/widgets/navigation_drawer.dart';

class AgentsListPage extends HookWidget {
  const AgentsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AgentsListView();
  }
}

class AgentsListView extends StatelessWidget {
  const AgentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      drawer: const AppNavigationDrawer(),
      appBar: MainAppBar(title: kAgentsListTitle),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.agentDetails);
            },
            child: const Text('Agent Details')),
      ),
    );
  }
}
