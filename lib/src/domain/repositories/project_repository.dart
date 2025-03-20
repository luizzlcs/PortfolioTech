import 'package:portfolio_tech/src/domain/entities/project.dart';

abstract class ProjectRepository {
  Future<List<Project>> getProjects();
}