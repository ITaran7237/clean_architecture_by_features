import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:clean_architecture_app/core/error/exeptions.dart';
import 'package:clean_architecture_app/features/random_images/data/models/random_image_model.dart';

abstract class RandomImageRemoteDataSource {
  Future<RandomImageModel>? getRandomNewImage();
}

class RandomImageRemoteDataSourceImpl implements RandomImageRemoteDataSource {
  final http.Client client;

  RandomImageRemoteDataSourceImpl({required this.client});

  @override
  Future<RandomImageModel>? getRandomNewImage() async {
    return await _getNewImageFromUrl('https://random.imagecdn.app/v1/image?width=500&height=300&category=buildings&format=json');
  }

  Future<RandomImageModel> _getNewImageFromUrl(String url) async {
    final response = await client.get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return RandomImageModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
