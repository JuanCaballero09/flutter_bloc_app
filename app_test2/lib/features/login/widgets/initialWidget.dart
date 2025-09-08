// ignore: file_names
import 'package:app_test2/features/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Cedula"),
        TextField(),
        Text("Nombre"),
        TextField(),
        ElevatedButton(onPressed: () {
          context.read<LoginBloc>().add(LoginLoginEvent());
        }, child: Text("Crear")),
      ],
    );
  }
}
