import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '/src/presentation/widgets/app_bars/main_app_bar.dart';
import '/src/presentation/widgets/layouts/main_page_layout.dart';

class AgentDetailsPage extends HookWidget {
  const AgentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AgentDetailsView();
  }
}

class AgentDetailsView extends StatelessWidget {
  const AgentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
        appBar: MainAppBar(
          title: 'Agent Details',
        ),
        body: Center(
          child: Text('Agent details page'),
        ));
  }
}
