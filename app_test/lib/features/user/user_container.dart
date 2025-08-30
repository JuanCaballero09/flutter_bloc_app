
import 'package:app_test/features/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/failed_user.dart';
import 'widgets/initial_user.dart';
import 'widgets/loading_user.dart';
import 'widgets/success_user.dart';

class UserContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(36),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitial) {
            return Column(
              children: [
                InitialUser(),
                ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(LoadUser());
                  },
                  child: Text("Cargar usuario"),
                ),
              ],
            );
          } else if (state is UserLoading) {
            return LoadingUser();
          } else if (state is UserSuccess) {
            return Column(
              children: [
                SuccessUser(jsonUser: state.user),
                ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(RefresUser());
                  },
                  child: Text("Refrescar usuario"),
                ),
              ],
            );
          } else if (state is UserFailed) {
            return Column(
              children: [
                FailedUser(),
                ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(LoadUser());
                  },
                  child: Text("Reintentar"),
                ),
              ],
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
