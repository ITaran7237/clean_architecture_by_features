import 'package:clean_architecture_app/core/error/failures.dart';
import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:clean_architecture_app/features/random_images/domain/repositories/random_image_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomImage implements UseCase<RandomImage> {
  final RandomImageRepository repository;

  GetRandomImage(this.repository);

  @override
  Future<Either<Failure, RandomImage?>> call() async =>
      await repository.getRandomImage();
}
