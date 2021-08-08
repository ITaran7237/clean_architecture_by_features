import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/network/network_info.dart';
import 'features/random_images/data/datasources/random_image_remote_data_source.dart';
import 'features/random_images/data/repositories/random_image_repository_impl.dart';
import 'features/random_images/domain/repositories/random_image_repository.dart';
import 'features/random_images/domain/usecases/get_random_image.dart';
import 'features/random_images/presentation/bloc/random_image_bloc.dart';

final serviceLocator = GetIt.instance;

Future init() async {
  // Bloc
  serviceLocator
      .registerFactory(() => RandomImageBloc(getRandomImage: serviceLocator()));

  // Use cases
  serviceLocator.registerLazySingleton(() => GetRandomImage(serviceLocator()));

  //Repository
  serviceLocator.registerLazySingleton<RandomImageRepository>(
    () => RandomImageRepositoryImpl(
      networkInfo: serviceLocator(),
      remoteDataSource: serviceLocator(),
    ),
  );

  //Data sources
  serviceLocator.registerLazySingleton<RandomImageRemoteDataSource>(
    () => RandomImageRemoteDataSourceImpl(client: serviceLocator()),
  );

  // Core
  serviceLocator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(serviceLocator()));

  // External
  serviceLocator.registerLazySingleton(() => http.Client());
  serviceLocator.registerLazySingleton(() => InternetConnectionChecker());
}
