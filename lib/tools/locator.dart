import 'package:get_it/get_it.dart';
import 'package:reewer/repository/auth_repository.dart';
import 'package:reewer/service/firebase/firebase_auth_service.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => AuthRepository());
  locator.registerLazySingleton(() => FirebaseAuthService());
}
