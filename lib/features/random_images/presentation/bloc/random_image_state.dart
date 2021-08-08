part of 'random_image_bloc.dart';

@immutable
abstract class RandomImageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class RandomImageInitial extends RandomImageState {}

class LoadingState extends RandomImageState {}

class OnGotNewRandomImageState extends RandomImageState {
  final String imageUrl;

  OnGotNewRandomImageState({required this.imageUrl});

  @override
  List<Object?> get props => [imageUrl];
}

class ErrorState extends RandomImageState {
  final String message;

  ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
