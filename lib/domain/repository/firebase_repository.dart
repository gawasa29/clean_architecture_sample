//ここは依存性逆転の原則を実装するためのインターフェース
abstract class FirebaseRepository {
  // Credential Features
  Future<void> signUpEmail();
}
