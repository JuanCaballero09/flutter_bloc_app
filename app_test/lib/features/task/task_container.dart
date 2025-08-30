import 'package:flutter/material.dart';
import 'widgets/success_task.dart';
import 'widgets/loading_task.dart';
import 'widgets/failed_task.dart';
import 'widgets/initial_task.dart';

class TaskContainer extends StatelessWidget {

  final List<Map<String, dynamic>> jsonTask = [
    {
      "titulo": "Comprar",
      "descripcion": "ir al Ara"
    },
    {
      "titulo": "Transito",
      "descripcion": "Tramite"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        children: [
          Text("Tareas", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), ),
          SizedBox(height: 10,),
          Expanded(
            child: InitialTask(),
          )
        ],
      ) 
    );
  }
}
