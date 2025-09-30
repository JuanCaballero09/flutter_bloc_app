import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      emit(LoginInitial());
    });

    on<LoginRetryEvent>((event, emit) async{
      emit(LoginInitial());

    });

    on<CreateUserEvent>((event, emit) async {
      emit(LoginLoading());

      try{
        final response = await http.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'name': event.nombre,
            'cedula': event.cedula,
          })
        );

        if (response.statusCode == 201) {
          final decode = jsonDecode(response.body);
          // print(decode);

          emit(LoginSuccess(decode['name']));
        } else {
          emit(LoginFailed());
          return;
        }
      } catch (e) {
        emit(LoginFailed());
        return;
      }

    });
  }
}
