part of 'random_image_bloc.dart';

abstract class RandomImageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetNewRandomImageEvent extends RandomImageEvent {}
