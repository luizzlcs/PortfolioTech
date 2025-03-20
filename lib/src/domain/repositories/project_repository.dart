import 'package:my_profile/src/domain/entities/project.dart';

abstract class ProjectRepository {
  Future<List<Project>> getProjects();
}