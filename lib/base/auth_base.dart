import 'package:reewer/model/user.dart';

abstract class AuthBase {
  Future<String?> getCurrentUserId();

  Future<void> signInWithPhoneNumber(
    String phoneNumber, {
    Function(User? user)? autoVerification,
    Function(String error)? verificationFailed,
    Function(String verificationId, int? resendToken)? verificationCodeSent,
    Function(String verificationId)? codeTimeOut,
  });

  Future<User?> verifyPhoneCode(String verificationId, String verificationCode);

  Future<User?> signInWithGoogle();

  Future<User?> signInWithApple();

  Future<bool> signOut();

  bool isSignedIn();

  String getErrorMessage(Object e);
}
