import 'package:reewer/base/auth_base.dart';
import 'package:reewer/model/user.dart';
import 'package:reewer/service/base/auth_service.dart';
import 'package:reewer/service/firebase/firebase_auth_service.dart';
import 'package:reewer/tools/locator.dart';

class AuthRepository implements AuthBase {
  final AuthService _service = locator<FirebaseAuthService>();

  @override
  Future<String?> getCurrentUserId() async {
    return await _service.getCurrentUserId();
  }

  @override
  Future<void> signInWithPhoneNumber(
    String phoneNumber, {
    Function(User? user)? autoVerification,
    Function(String error)? verificationFailed,
    Function(String verificationId, int? resendToken)? verificationCodeSent,
    Function(String verificationId)? codeTimeOut,
  }) async {
    return await _service.signInWithPhoneNumber(
      phoneNumber,
      autoVerification: autoVerification,
      verificationFailed: verificationFailed,
      verificationCodeSent: verificationCodeSent,
      codeTimeOut: codeTimeOut,
    );
  }

  @override
  Future<User?> verifyPhoneCode(
    String verificationId,
    String verificationCode,
  ) async {
    return await _service.verifyPhoneCode(verificationId, verificationCode);
  }

  @override
  Future<User?> signInWithGoogle() async {
    return await _service.signInWithGoogle();
  }

  @override
  Future<User?> signInWithApple() async {
    return await _service.signInWithApple();
  }

  @override
  Future<bool> signOut() async {
    return await _service.signOut();
  }

  @override
  bool isSignedIn() {
    return _service.isSignedIn();
  }

  @override
  String getErrorMessage(Object e) {
    return _service.getErrorMessage(e);
  }
}
