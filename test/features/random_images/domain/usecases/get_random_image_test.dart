import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';
import 'package:clean_architecture_app/features/random_images/domain/repositories/random_image_repository.dart';
import 'package:clean_architecture_app/features/random_images/domain/usecases/get_random_image.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'get_random_image_test.mocks.dart';

@GenerateMocks([RandomImageRepository])
void main() {
  late GetRandomImage useCase;
  late MockRandomImageRepository mockRandomImageRepository;

  setUp(() {
    mockRandomImageRepository = MockRandomImageRepository();
    useCase = GetRandomImage(mockRandomImageRepository);
  });

  final tRandomImage = RandomImage(
      provider: 'unsplash',
      license: 'CC0',
      terms: 'https://unsplash.com/terms',
      url: 'https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json');

  test(
    'should get image from the repository',
    () async {
      // arrange
      when(mockRandomImageRepository.getRandomImage())
          .thenAnswer((_) async => Right(tRandomImage));
      // act
      final result = await useCase();
      // assert
      expect(result, Right(tRandomImage));
      verify(mockRandomImageRepository.getRandomImage());
      verifyNoMoreInteractions(mockRandomImageRepository);
    },
  );
}
