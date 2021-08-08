import 'package:clean_architecture_app/core/error/failures.dart';
import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type> {
  Future<Either<Failure, RandomImage?>> call();
}