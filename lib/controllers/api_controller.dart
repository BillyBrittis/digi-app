import 'package:digi_app/data/api/data_api.dart';
import 'package:digi_app/domain/business/api_workflow.dart';
import 'package:digi_app/domain/models/digimon_model.dart';

class ApiController implements ApiWorkFlow {
  final DataApi dataApi = DataApi();

  @override
  Future<List<DigimonModel>> getDigimonList({required int page, required int pageSize}) {
    return dataApi.getDigimonList(page: page, pageSize: pageSize);
  }
}
