import 'package:flutter/material.dart';

class InitialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Cedula"),
        TextField(),
        Text("Nombre"),
        TextField(),
        ElevatedButton(onPressed: () {}, child: Text("Crear")),
      ],
    );
  }
}
