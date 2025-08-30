

import 'package:flutter/material.dart';

class Tarea2 extends StatelessWidget {
  const Tarea2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        bottom: 10
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 0)
          )
        ],
        borderRadius: BorderRadius.circular(16)
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Transito", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          Text("Tramite")
        ],
      ),
    );
  }
}


class Tarea1 extends StatelessWidget {
  const Tarea1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5), // color de la sombra
            spreadRadius: 2,  // cuánto se expande
            blurRadius: 10,    // qué tan difuminada
            offset: Offset(0, 0), // posición X, Y
          )
        ],
        borderRadius: BorderRadius.circular(16)
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Comprar", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          Text("Ir al Ara")
        ],
      ),
    );
  }
}