import 'package:flutter/material.dart';
import 'success_tareas_container.dart';
import 'loading_tareas_container.dart';
import 'failed_tareas_container.dart';
import 'initial_tareas_container.dart';

class TareasWidget extends StatelessWidget {
  const TareasWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: double.infinity,
      child: FailedTareas(),
    );
  }
}
