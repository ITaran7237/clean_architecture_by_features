import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'features/auth/data/datasources/auth_data_source.dart';
import 'features/auth/data/datasources/auth_local_data_source.dart';
import 'features/auth/data/repositories/login_repository_impl.dart';
import 'features/auth/domain/repositories/login_repository.dart';
import 'features/auth/domain/usecases/sign_in_user.dart';
import 'features/auth/domain/usecases/sign_up_user.dart';
import 'features/auth/presentation/cubit/auth_cubit.dart';
import 'features/coin_list/data/datasources/coins_data_source.dart';
import 'features/coin_list/data/repositories/coins_repository_impl.dart';
import 'features/coin_list/domain/repositories/coins_repository.dart';
import 'features/coin_list/domain/usecases/get_coin_list.dart';
import 'features/coin_list/presentation/cubit/coins_cubit.dart';

final serviceLocator = GetIt.instance;

Future init() async {
  // Cubit
  serviceLocator.registerFactory(() => AuthCubit(signInUser: serviceLocator(), signUpUser: serviceLocator()));
  serviceLocator.registerFactory(() => CoinsCubit(getCoinList: serviceLocator()));

  // Use cases
  serviceLocator.registerLazySingleton(() => SignInUser(serviceLocator()));
  serviceLocator.registerLazySingleton(() => SignUpUser(serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetCoinList(serviceLocator()));

  //Repository
  serviceLocator.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(authDataSource: serviceLocator(), authLocalDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<CoinsRepository>(
          () => CoinsRepositoryImpl(coinsDataSource: serviceLocator()));

  //Data sources
  serviceLocator.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(auth: serviceLocator()));
  serviceLocator.registerLazySingleton<AuthLocalDataSource>(() => AuthLocalDataSourceImpl(sharedPreferences: serviceLocator()));
  serviceLocator.registerLazySingleton<CoinsDataSource>(() => CoinsDataSourceImpl(client: serviceLocator()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);
  serviceLocator.registerLazySingleton(() => http.Client());
  serviceLocator.registerLazySingleton(() => FirebaseAuth.instance);
}
