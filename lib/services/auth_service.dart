import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AuthService {
  Future<String?> registerUser({
    required String username,
    required String email,
    required String password,
  }) async {
    final user = ParseUser(
      username,
      password,
      email,
    );

    var response = await user.signUp();

    if (response.success) {
      return null;
    } else {
      return response.error?.message ?? "Registration failed";
    }
  }

  Future<String?> loginUser({
    required String username,
    required String password,
  }) async {
    final user = ParseUser(
      username,
      password,
      null,
    );

    var response = await user.login();

    if (response.success) {
      return null;
    } else {
      return response.error?.message ?? "Login failed";
    }
  }

  Future<void> logoutUser() async {
    final user = await ParseUser.currentUser() as ParseUser?;
    await user?.logout();
  }
}