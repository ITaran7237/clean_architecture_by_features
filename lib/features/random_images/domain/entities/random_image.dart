import 'package:equatable/equatable.dart';

class RandomImage extends Equatable {
  final String provider;
  final String license;
  final String terms;
  final String url;

  RandomImage({required this.provider, required this.license,
    required this.terms, required this.url});

  @override
  List<Object?> get props => [provider, license, terms, url];
}
