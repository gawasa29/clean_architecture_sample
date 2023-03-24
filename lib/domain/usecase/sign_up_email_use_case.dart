import 'package:clean_architecture_sample/domain/repository/firebase_repository.dart';

class SignUpEmailUseCase {
  final FirebaseRepository repository;

  SignUpEmailUseCase({required this.repository});

  Future<void> call() {
    print('🐯 SignUpEmailUseCase Now!!!!!');
    return repository.signUpEmail();
  }
}
