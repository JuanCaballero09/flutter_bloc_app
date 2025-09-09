// ignore: file_names
import 'package:app_test2/features/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialWidget extends StatelessWidget {
  final TextEditingController cedulaController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();

  InitialWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(horizontal: 24),

        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Iniciar Sesión",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              Text("Cédula"),
              const SizedBox(height: 8),

              TextField(
                cursorColor: Colors.blueAccent,
                controller: cedulaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent, 
                      width: 2
                    )
                  ),
                  hintText: "Ingrese su cédula",
                  prefixIcon: Icon(Icons.badge_outlined),
                ),
              ),
              const SizedBox(height: 16),

              Text("Nombre"),
              const SizedBox(height: 8),
              
              TextField(
                cursorColor: Colors.blueAccent,
                controller: nombreController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent, 
                      width: 2
                    )
                  ),
                  hintText: "Ingrese su nombre",
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton.icon(
                onPressed: () {
                  final cedulaText = cedulaController.text.trim();
                  final nombre = nombreController.text.trim();
                  if (cedulaText.isEmpty || nombre.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Todos los campos son obligatorios')),
                    );
                    return;
                  }
                  final cedula = int.tryParse(cedulaText) ?? 0;
                  context.read<LoginBloc>().add(CreateUserEvent(cedula: cedula, nombre: nombre));
                },
                icon: Icon(Icons.login, size: 24,),
                label: Text("Iniciar Sesión", style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.blueAccent,
                  padding: const EdgeInsets.all(25),
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
