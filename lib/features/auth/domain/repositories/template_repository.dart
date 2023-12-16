import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../t.dart';
import '../entities/template_entitiy.dart';

abstract class TemplateRepository {
  Future<Either<Failure, TemplateEntity>> getTemplate(
      {required TemplateParams params});
}
