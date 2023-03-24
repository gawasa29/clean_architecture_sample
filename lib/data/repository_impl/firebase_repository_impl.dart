import 'package:clean_architecture_sample/domain/repository/firebase_repository.dart';

//ここからdata_sourceに繋ぐ
class FirebaseRepositoryImpl implements FirebaseRepository {
  @override
  Future<void> signUpEmail() async {
    print("🐯 signUpEmailRepositoryImpl  Now!!!!!");
    try {
      print('成功');
    } catch (e) {
      print(e);
    }
  }
}
