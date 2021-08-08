import 'package:clean_architecture_app/core/error/exeptions.dart';
import 'package:clean_architecture_app/core/error/failures.dart';
import 'package:clean_architecture_app/core/network/network_info.dart';
import 'package:clean_architecture_app/features/random_images/data/datasources/random_image_remote_data_source.dart';
import 'package:clean_architecture_app/features/random_images/data/models/random_image_model.dart';
import 'package:clean_architecture_app/features/random_images/data/repositories/random_image_repository_impl.dart';
import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock implements RandomImageRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late RandomImageRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp((){
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = RandomImageRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  group('getRandomImage', () {
    final randomImageModel = RandomImageModel(
        provider: 'unsplash',
        license: 'CC0',
        terms: 'https://unsplash.com/terms',
        url: 'https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json');
    final RandomImage tRandomImage = randomImageModel;

    test(
      'should check if the device is online',
          () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        // act
        repository.getRandomImage();
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.getRandomNewImage())
              .thenAnswer((_) async => randomImageModel);
          // act
          final result = await repository.getRandomImage();
          // assert
          verify(mockRemoteDataSource.getRandomNewImage());
          expect(result, equals(Right(tRandomImage)));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
            () async {
          // arrange
          when(mockRemoteDataSource.getRandomNewImage())
              .thenAnswer((_) async => randomImageModel);
          // act
          await repository.getRandomImage();
          // assert
          verify(mockRemoteDataSource.getRandomNewImage());
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
            () async {
          // arrange
          when(mockRemoteDataSource.getRandomNewImage())
              .thenThrow(ServerException());
          // act
          final result = await repository.getRandomImage();
          // assert
          verify(mockRemoteDataSource.getRandomNewImage());
          expect(result, equals(Left(ServerFailure())));
        },
      );
    });
  });
}
