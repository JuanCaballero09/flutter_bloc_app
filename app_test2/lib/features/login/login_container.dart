import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';
import 'widgets/failedWidget.dart';
import 'widgets/initialWidget.dart';
import 'widgets/loadingWidget.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginInitial) {
          return InitialWidget();
        } else if (state is LoginLoading) {
          return Center(child: LoadingWidget());
        } else if (state is LoginFailed) {
          return Center(child: FailedWidget());
        }

        return SizedBox.shrink();
      },
    );
  }
}