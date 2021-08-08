import 'dart:convert';

import 'package:clean_architecture_app/core/error/exeptions.dart';
import 'package:clean_architecture_app/features/random_images/data/datasources/random_image_remote_data_source.dart';
import 'package:clean_architecture_app/features/random_images/data/models/random_image_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart' ;
import '../../../../fixtures/fixture_reader.dart';
import 'random_image_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late RandomImageRemoteDataSourceImpl dataSource;
  late MockClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockClient();
    dataSource = RandomImageRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockHttpClientSuccess() {
    when(mockHttpClient.get(Uri.parse('https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json'), headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response(fixture('images.json'), 200));
  }

  void setUpMockHttpClientFailure() {
    when(mockHttpClient.get(Uri.parse('https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json'), headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('getRandomImage', () {
    final randomImageModel = RandomImageModel.fromJson(json.decode(fixture('images.json')));

    test(
      'should perform a GET request on a URL  with application/json header',
      () async {
        // arrange
        setUpMockHttpClientSuccess();
        // act
        dataSource.getRandomNewImage();
        // assert
        verify(mockHttpClient.get(
          Uri.parse('https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json'),
          headers: {
            'Content-Type': 'application/json',
          },
        ));
      },
    );

    test(
      'should return RandomImage when request is successful',
      () async {
        // arrange
        setUpMockHttpClientSuccess();
        // act
        final result = await dataSource.getRandomNewImage();
        // assert
        expect(result, equals(randomImageModel));
      },
    );

    test(
      'should throw a ServerException when request is unsuccessful',
      () async {
        // arrange
        setUpMockHttpClientFailure();
        // act
        final call = dataSource.getRandomNewImage();
        // assert
        expect(() => call, throwsA(TypeMatcher<ServerException>()));
      },
    );
  });
}
