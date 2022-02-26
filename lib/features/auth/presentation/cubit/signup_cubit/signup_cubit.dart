import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fin_pocket/features/auth/data/sign_up_req.dart';
import 'package:fin_pocket/features/auth/data/signup_response.dart';
import 'package:fin_pocket/features/auth/domain/signup_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  final SignupRepo _signupRepo = SignupRepo();

  void signup(SignUpRequest request) async {
    emit(SignupLoading());
    var res = await _signupRepo.signup(request);
    res.fold(
        (l) => emit(SignupError(l.message)), (r) => emit(SignupSuccess(r)));
  }
}
