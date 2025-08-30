
import 'package:flutter/material.dart';
import 'tareas.dart';

class SuccessTareas extends StatelessWidget {
  const SuccessTareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tareas", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), ),
        Text(""),
        Tarea1(),
        Tarea2()
      ],
    );
  }
}