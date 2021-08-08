import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:clean_architecture_app/core/error/failures.dart';
import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:clean_architecture_app/features/random_images/domain/usecases/get_random_image.dart';
import 'package:clean_architecture_app/locator.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'random_image_event.dart';

part 'random_image_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class RandomImageBloc extends Bloc<RandomImageEvent, RandomImageState> {
  final GetRandomImage _getRandomImage;

  RandomImageBloc({
    required GetRandomImage getRandomImage,
  })  : _getRandomImage = getRandomImage,
        super(RandomImageInitial());

  @override
  Stream<RandomImageState> mapEventToState(RandomImageEvent event) async* {
    if (event is GetNewRandomImageEvent) {
      yield LoadingState();
      final failureOrImage = await _getRandomImage();
      yield* _eitherLoadedOrErrorState(failureOrImage);
    }
  }

  Stream<RandomImageState> _eitherLoadedOrErrorState(
      Either<Failure, RandomImage?> failureOrImage) async* {
    yield failureOrImage.fold(
        (failure) => ErrorState(message: _mapFailureToMessage(failure)),
        (image) => OnGotNewRandomImageState(imageUrl: image!.url));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
