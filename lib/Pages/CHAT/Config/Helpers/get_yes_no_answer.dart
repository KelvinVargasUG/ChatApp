import 'package:login/Domain/CHAT/Entidades/message.dart';
import 'package:dio/dio.dart';
import 'package:login/Pages/CHAT/Infrastructure/Models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    return yesNoModel.toMessaEntity();
  }
}
