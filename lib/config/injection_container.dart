import 'package:clean_architecture_sample/data/repository_impl/firebase_repository_impl.dart';
import 'package:clean_architecture_sample/domain/repository/firebase_repository.dart';
import 'package:clean_architecture_sample/domain/usecase/sign_up_email_use_case.dart';
import 'package:clean_architecture_sample/presentation/auth/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> init() async {
  print('🐯injection Now!!');

  // Cubits
  sl.registerFactory(
    () => AuthCubit(singUpEmailUseCase: sl.call()),
  );
  // Use Cases
  sl.registerLazySingleton(() => SignUpEmailUseCase(repository: sl.call()));
  // Repository
  sl.registerLazySingleton<FirebaseRepository>(() => FirebaseRepositoryImpl());
}
