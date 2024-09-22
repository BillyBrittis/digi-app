import 'package:digi_app/domain/models/digimon_complete.dart';
import 'package:digi_app/domain/models/digimon_model.dart';

abstract class ApiWorkFlow {
  Future<List<DigimonModel>> getDigimonList({required int page, required int pageSize});
  Future<DigimonComplete> getDigimonById({required int id});
}
