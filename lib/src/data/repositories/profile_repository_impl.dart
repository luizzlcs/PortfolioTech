

import 'package:portfolio_tech/src/domain/entities/profile.dart';
import 'package:portfolio_tech/src/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Profile> getProfile() async {
    // Simula uma chamada de API ou banco de dados
    return Profile(
      name: "Luiz Carlos da Silva",
      role: 'Desenvolvedor Full-Stack (Mobile & Web) | Flutter, Java, Node.js, Firebase',//"Desenvolvedor de Aplicações Móveis | Dart & Flutter",
      experiences: [
        "Desenvolvedor Mobile e Web | Ponto Care Franchising e Consultoria (2021 - Atual)",
        "Gerente Administrativo Financeiro | Dental Med Center (2010 - 2020)",
      ],
      formations: [
        "Ciências da Computação | Universidade Federal do Ceará (2019 - atualmente)",
        "Redes de Computadores | EEEP Maria Auday Vasconcelos Nery (2016 - 2018)",
      ],
      courses: [
        "Java Backend | DevSuperior com professor Nélio Alves (2024)",
        "JavaScript | Hashtag (2024)",
        "Python | Hashtag (2023)",
      ],
      skills: [
        "Back-End: Java, Maven, Spring Boot, API RESTful",
        "Front-End/Mobile: Dart, Flutter, JavaScript (NodeJS), Python",
      ],
      languages: {
        "Português": "Nativo",
        "Inglês": "A2",
      },
    );
  }
}