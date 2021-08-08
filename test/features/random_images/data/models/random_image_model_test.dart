import 'dart:convert';

import 'package:clean_architecture_app/features/random_images/data/models/random_image_model.dart';
import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  final randomImageModel = RandomImageModel(
      provider: 'unsplash',
      license: 'CC0',
      terms: 'https://unsplash.com/terms',
      url: 'https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json');

  test('should be a subclass of RandomImage entity', () async {
    //assert
    expect(randomImageModel, isA<RandomImage>());
  });

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('images.json'));
        // act
        final result = RandomImageModel.fromJson(jsonMap);
        // assert
        expect(result, randomImageModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = randomImageModel.toJson();
        // assert
        final expectedJsonMap = {
          "provider": "unsplash",
          "license": "CC0",
          "terms": "https://unsplash.com/terms",
          "url": "https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json"
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
