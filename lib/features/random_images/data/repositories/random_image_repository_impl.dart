import 'package:clean_architecture_app/core/error/exeptions.dart';
import 'package:clean_architecture_app/core/error/failures.dart';
import 'package:clean_architecture_app/core/network/network_info.dart';
import 'package:clean_architecture_app/features/random_images/data/datasources/random_image_remote_data_source.dart';
import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:clean_architecture_app/features/random_images/domain/repositories/random_image_repository.dart';
import 'package:dartz/dartz.dart';

class RandomImageRepositoryImpl implements RandomImageRepository {
  final RandomImageRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RandomImageRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, RandomImage?>> getRandomImage() async {
    var networkStatus = await networkInfo.isConnected;
    if (networkStatus != null && networkStatus) {
      try {
        return Right(await remoteDataSource.getRandomNewImage());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
