import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_points.dart';
import '../../../../t.dart';
import '../models/template_model.dart';

class TemplateRemoteDataSource {
  final ApiConsumer api;

  TemplateRemoteDataSource({required this.api});
  Future<TemplateModel> getTemplate(TemplateParams params) async {
    final response = await api.get("${EndPoints.template}");
    return TemplateModel.fromJson(response);
  }
}
