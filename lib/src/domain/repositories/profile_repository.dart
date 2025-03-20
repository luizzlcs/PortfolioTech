
import 'package:portfolio_tech/src/domain/entities/profile.dart';

abstract class ProfileRepository {
  Future<Profile> getProfile();
}