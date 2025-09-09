
import 'package:app_test2/features/homeInfo/bloc/home_info_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hola"),
        Text("Bienvenido al home")
      ],
    );
  }
}