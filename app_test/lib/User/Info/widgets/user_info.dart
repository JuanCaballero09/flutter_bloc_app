import 'package:flutter/material.dart';

import 'success_info.dart';
import 'failed_info.dart';
import 'loading_info.dart';
import 'initial_info.dart';

class InfoWidget extends StatelessWidget {  
  
  final Map<String, dynamic> jsonUser = {
    "email": "user@gmail.com",
    "nombre": "Carlos",
    "saldo": 12000
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(36),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(128, 0, 255, 1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(128, 0, 255, .5),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 0)
          )
        ]
      ),
      child: InitialInfoWidget()
    );
  }
}

