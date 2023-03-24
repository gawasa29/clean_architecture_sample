import 'package:bloc/bloc.dart';
import 'package:clean_architecture_sample/domain/usecase/sign_up_email_use_case.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final SignUpEmailUseCase singUpEmailUseCase;
  AuthCubit({required this.singUpEmailUseCase}) : super(AuthInitial());
  Future<void> signUpEmail() async {
    try {
      singUpEmailUseCase.call();
      emit(Authenticated());
    } catch (e) {
      emit(AuthFailure());
    }
  }
}
