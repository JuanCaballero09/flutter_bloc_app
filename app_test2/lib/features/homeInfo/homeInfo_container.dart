// ignore: file_names
import 'package:flutter/material.dart';

class HomeinfoContainer extends StatelessWidget {
  final String nombre;
  const HomeinfoContainer({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Bienvenido $nombre"),
    );
  }
}