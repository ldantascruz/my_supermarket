
import '../common/models/user_model.dart';

abstract class AuthService {
  Future<UserModel> signIn({
    required String email,
    required String password,
  });
}
