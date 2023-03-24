part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

//初期状態
class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

//認証済
class Authenticated extends AuthState {
  @override
  List<Object> get props => [];
}

//失敗
class AuthFailure extends AuthState {
  @override
  List<Object> get props => [];
}
