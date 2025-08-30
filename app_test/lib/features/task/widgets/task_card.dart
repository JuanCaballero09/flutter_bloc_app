import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String titulo;
  final String descripcion;

  const TaskCard({
    super.key,
    required this.titulo,
    required this.descripcion,
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
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 0),
          )
        ],
        borderRadius: BorderRadius.circular(16)
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titulo,style: TextStyle(),),
          Text(descripcion,style: TextStyle(),)
        ],
      ),
    );
  }
}
