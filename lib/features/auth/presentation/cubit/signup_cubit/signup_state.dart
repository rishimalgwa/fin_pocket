part of 'signup_cubit.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final SignUpResponse response;

  const SignupSuccess(this.response);
}

class SignupError extends SignupState {
  final String msg;

  const SignupError(this.msg);
}
