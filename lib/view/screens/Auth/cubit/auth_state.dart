part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginErrorState extends AuthState {
  final String error;

  LoginErrorState(this.error);
}
