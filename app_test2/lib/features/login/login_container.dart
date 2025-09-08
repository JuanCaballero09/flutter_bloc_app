
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';
import 'widgets/initialWidget.dart';

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginInitial) {
          return InitialWidget();
        }
        // Return a fallback widget for other states
        return SizedBox.shrink();
      },
    );
  }
}