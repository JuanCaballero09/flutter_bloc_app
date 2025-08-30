import 'package:flutter/material.dart';

import '../features/user/user_container.dart';
import '../features/task/task_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserContainer(),
          Expanded(
            child: TaskContainer()
          )
        ],
      ),
    );
  }
}