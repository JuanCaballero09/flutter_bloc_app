part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginLoginEvent extends LoginEvent {}

class LoginRetryEvent extends LoginEvent {}

class CreateUserEvent extends LoginEvent {
  final String cedula;
  final String nombre;

  const CreateUserEvent({required this.cedula, required this.nombre});

  @override
  List<Object> get props => [cedula, nombre];
}
