import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

class FailedWidget extends StatelessWidget {
  const FailedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login Failed',
            style: TextStyle(fontSize: 24, color: Colors.red),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<LoginBloc>().add(LoginRetryEvent());
            },
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}