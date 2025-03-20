import 'package:get_it/get_it.dart';
import 'package:my_profile/src/data/repositories/project_repository_impl.dart';
import 'package:my_profile/src/domain/repositories/profile_repository.dart';
import 'package:my_profile/src/data/repositories/profile_repository_impl.dart';
import 'package:my_profile/src/domain/repositories/project_repository.dart';

final getIt = GetIt.I;

void setupLocator() {
  getIt.registerSingleton<ProfileRepository>(ProfileRepositoryImpl());
  getIt.registerSingleton<ProjectRepository>(ProjectRepositoryImpl());
}