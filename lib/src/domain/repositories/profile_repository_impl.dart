

import 'package:my_profile/src/domain/entities/profile.dart';
import 'package:my_profile/src/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Profile> getProfile() async {
    // Simula uma chamada de API ou banco de dados
    return Profile(
      name: "Tiago Rodrigues Sousa",
      role: "Desenvolvedor de Aplicações Móveis | Dart & Flutter",
    );
  }
}