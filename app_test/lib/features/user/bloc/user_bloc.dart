import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());

      await Future.delayed(Duration(seconds: 2));

      try {

        final Map<String, dynamic> user = {
          "email": "user@gmail.com",
          "nombre": "Carlos",
          "saldo": 12000,
        };

        emit(UserSuccess(user));

      } catch (e) {

        emit(UserFailed("No se pudo cargar el usuario"));

      }
    });

    on<RefresUser>((event, emit) async {
      emit(UserLoading());

      await Future.delayed(Duration(seconds: 1)); // Simula refresco

      emit(UserSuccess({
        "email": "nuevo@gmail.com",
        "nombre": "Andrea",
        "saldo": 5000,
      }));
    });
  }
}
