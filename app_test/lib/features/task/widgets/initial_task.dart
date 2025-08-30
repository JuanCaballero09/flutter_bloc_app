
import 'package:flutter/material.dart';

class InitialTask extends StatelessWidget {
  const InitialTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tareas", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), ),
        Text(""),
        Container(
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
              Text("Comprar", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Container(
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
            ],
          ),
        )
      ],
    );
  }
}