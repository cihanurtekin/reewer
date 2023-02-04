import 'package:reewer/model/user.dart';
import 'package:reewer/service/base/auth_service.dart';

class FirebaseAuthService implements AuthService {
  @override
  Future<String?> getCurrentUserId() {
    // TODO: implement getCurrentUserId
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithPhoneNumber(
    String phoneNumber, {
    Function(User? user)? autoVerification,
    Function(String error)? verificationFailed,
    Function(String verificationId, int? resendToken)? verificationCodeSent,
    Function(String verificationId)? codeTimeOut,
  }) {
    // TODO: implement signInWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<User?> verifyPhoneCode(
    String verificationId,
    String verificationCode,
  ) {
    // TODO: implement verifyPhoneCode
    throw UnimplementedError();
  }

  @override
  Future<User?> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<User?> signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }

  @override
  Future<bool> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  bool isSignedIn() {
    // TODO: implement isSignedIn
    throw UnimplementedError();
  }

  @override
  String getErrorMessage(Object e) {
    // TODO: implement getErrorMessage
    throw UnimplementedError();
  }
}
