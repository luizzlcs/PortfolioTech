import 'package:portfolio_tech/src/domain/entities/profile.dart';
import 'package:portfolio_tech/src/domain/repositories/profile_repository.dart';

class GetProfile {
  final ProfileRepository repository;

  GetProfile(this.repository);

  Future<Profile> call() async {
    return await repository.getProfile();
  }
}