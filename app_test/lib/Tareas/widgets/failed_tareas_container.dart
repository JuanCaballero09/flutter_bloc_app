import 'package:flutter/material.dart';

class FailedTareas extends StatelessWidget {
  const FailedTareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Algo a salido mal", style: TextStyle(fontSize: 25),),
        Text(""),
        Icon(Icons.error, size: 55,)
      ],
    );
  }
}