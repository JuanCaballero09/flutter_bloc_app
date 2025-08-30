part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();
  
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserFailed extends UserState {
  final String message;

  const UserFailed(this.message);

  @override
  List<Object> get props => [message];
}

class UserSuccess extends UserState {
  final Map<String, dynamic> user;

  const UserSuccess(this.user);

  
  @override
  List<Object> get props => [user];
}