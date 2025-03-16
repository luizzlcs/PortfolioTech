
import 'package:my_profile/src/domain/entities/profile.dart';

abstract class ProfileRepository {
  Future<Profile> getProfile();
}