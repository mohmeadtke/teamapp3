import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:teamapp/Features/auth/Presentation/state_mangment/bloc/auth_bloc.dart';
import 'package:teamapp/Features/auth/data/DataSource/createAccount.dart';
import 'package:teamapp/Features/auth/data/DataSource/signIn.dart';
import 'package:teamapp/Features/auth/data/DataSource/signInWithGoogle.dart';
import 'package:teamapp/Features/auth/data/repoimpl/user_repo_impl.dart';
import 'package:teamapp/Features/auth/domian/repo/userRepo.dart';
import 'package:teamapp/Features/auth/domian/usecase/createAccount.dart';
import 'package:teamapp/Features/auth/domian/usecase/signInUseCase.dart';
import 'package:teamapp/Features/auth/domian/usecase/signInWithGoogle.dart';
import 'package:teamapp/core/network/network_info.dart';

final sl = GetIt.instance;

void init() {
  //! Features
  //?auth
  //bloc
  sl.registerFactory(() => AuthBloc(
      createaccountUseCase: sl(),
      signinUseCase: sl(),
      signinwithgoogleUseCase: sl()));
  //useCase
  sl.registerLazySingleton(() => CreateaccountUseCase(userRepo: sl()));
  sl.registerLazySingleton(() => SigninUseCase(userRepo: sl()));
  sl.registerLazySingleton(() => SigninwithgoogleUseCase(userRepo: sl()));
  //repo
  sl.registerLazySingleton<UserRepo>(() => UserRepoImpl(
      networkInfo: sl(),
      createAccountClass: sl(),
      signInClass: sl(),
      signInWithGoogleClass: sl()));
  //data
  sl.registerFactory(() => CreateAccount());
  sl.registerFactory(() => SignIn());
  sl.registerFactory(() => SignInWithGoogle());
  //core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton(() => InternetConnection());
}
