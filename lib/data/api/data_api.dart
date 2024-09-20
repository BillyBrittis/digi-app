import 'package:digi_app/domain/models/digimon_model.dart';
import 'package:digi_app/utils/consts/api.dart';
import 'package:dio/dio.dart';

class DataApi {
  final Dio dio = Dio();

  Future<List<DigimonModel>> getDigimonList({required int page, required int pageSize}) async {
    final response = await dio.get('$url/digimon', queryParameters: {
      "page": page,
      "pageSize": pageSize,
    });

    return List<DigimonModel>.from(response.data['content'].map((e) => DigimonModel.fromMap(e)));
  }
}
