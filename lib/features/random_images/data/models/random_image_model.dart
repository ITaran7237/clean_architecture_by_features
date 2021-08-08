import 'package:clean_architecture_app/features/random_images/domain/entities/random_image.dart';

class RandomImageModel extends RandomImage {
  RandomImageModel(
      {required String provider,
      required String license,
      required String terms,
      required String url})
      : super(provider: provider, license: license, terms: terms, url: url);

  factory RandomImageModel.fromJson(Map<String, dynamic> json) {
    return RandomImageModel(
        provider: json['provider'],
        license: json['license'],
        terms: json['terms'],
        url: json['url']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['provider'] = this.provider;
    data['license'] = this.license;
    data['terms'] = this.terms;
    data['url'] = this.url;
    return data;
  }
}
