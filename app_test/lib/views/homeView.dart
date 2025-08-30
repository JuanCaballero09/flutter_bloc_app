import 'package:flutter/material.dart';

import '../User/Info/widgets/user_info.dart';
import '../Tareas/widgets/tareas_container.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InfoWidget(),
          TareasWidget()
        ],
      ),
    );
  }
}