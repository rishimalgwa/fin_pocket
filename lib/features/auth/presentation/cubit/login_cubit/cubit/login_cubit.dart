import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
//  final LoginRepo _loginRepo = LoginRepo();
  void login(int number) async {
    emit(LoginLoading());
    // var res = await _loginRepo.login(number);
    // res.fold((l) => emit(LoginError(l.message)), (r) => emit(LoginSuccess()));
  }
}
