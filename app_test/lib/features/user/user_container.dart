import 'package:app_test/features/user/widgets/initial_user.dart';
import 'package:flutter/material.dart';

import 'widgets/failed_user.dart';
import 'widgets/initial_user.dart';
import 'widgets/loading_user.dart';
import 'widgets/success_user.dart';

class UserContainer extends StatelessWidget {  
  
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
      child: InitialUser()
    );
  }
}

