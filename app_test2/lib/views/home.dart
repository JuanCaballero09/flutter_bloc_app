import 'package:flutter/material.dart';

import '../features/homeInfo/homeInfo_container.dart';

class HomeView extends StatelessWidget {
  final String nombre;
  const HomeView({super.key, required this.nombre});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 80),
            child: Image.asset('assets/images/carro-onix-hatchback.png'),
          ),
          HomeinfoContainer(nombre: nombre)
        ],
      )
    );
  }

}