import 'package:portfolio_tech/src/constants/app_image.dart';
import 'package:portfolio_tech/src/domain/entities/project.dart';
import 'package:portfolio_tech/src/domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<List<Project>> getProjects() async {
    // Simula uma chamada de API ou banco de dados
    await Future.delayed(Duration(seconds: 1)); // Simula um delay de rede
    return [
      Project(
        name: "DSCommerce - Java",
        description:
            "A DSCommerce API (caso de estudo) é o núcleo que suporta toda a operação do sistema, atendendo tanto administradores quanto clientes.",
        type: "Back-end",
        imageUrl: AppImage.dsCommerce,
        siteUrl: "",
        githubUrl: "https://github.com/luizzlcs/dscommerce",
      ),
      Project(
        name: "DSEvent - Java",
        description:
            "Sistema desenvolvido para gerenciar participantes e atividades de eventos acadêmicos. Permite o cadastro de palestras, cursos e oficinas, com descrição, preço e horários detalhados.",
        type: "Back-end",
        imageUrl: AppImage.dsEvent,
        siteUrl: "",
        githubUrl: "https://github.com/luizzlcs/dsevent",
      ),
      Project(
        name: "DSClient - Java",
        description:
            "Projeto Spring Boot contendo um CRUD completo de web services REST.",
        type: "Back-end",
        imageUrl: AppImage.dsClient,
        siteUrl: "",
        githubUrl: "https://github.com/luizzlcs/dsClient",
      ),
      Project(
        name: "Diretório de links",
        description:
            "Aplicativo web em Flutt er que oferece um diretório centralizado de links, com compartilhamento personalizado dos link e análise de visitas..",
        type: "Front-end",
        imageUrl: AppImage.diretorioDeLinks,
        siteUrl: "https://adventistasc.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/adventistasc",
      ),
      Project(
        name: "Campo minado",
        description:
            'O aplicativo Flutter "Campo Minado" é um jogo de lógica onde os jogadores devem identificar minas em um campo sem detoná-las.',
        type: "Front-end",
        imageUrl: AppImage.campoMinado,
        siteUrl: "https://campominado-lcs.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/campo_minado",
      ),
      Project(
        name: "Seven Manager",
        description:
            "Aplicativo ainda em desenvolvimento, visa atender as princiapais rotinas administrativas para igrejas Adventistas locais ",
        type: "Front-end",
        imageUrl: AppImage.sevenManager,
        siteUrl: "https://sevenmaneger.netlify.app",
        githubUrl: "https://github.com/luizzlcs/seven_manager7",
      ),
      Project(
        name: "Educativa",
        description:
            "Educativa é um sistema desenvolvido em Flutter para facilitar a gestão de cursos, alunos e matrículas.",
        type: "Front-end",
        imageUrl: AppImage.sincofarma,
        siteUrl: "https://educativa.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/sincofarma",
      ),
      Project(
        name: "Administrativo IASD",
        description:
            "Cadastra todas os departamentos e ativides dos departamentos da IASD e gerencia as rotinas.",
        type: "Front-end",
        imageUrl: AppImage.administrativoIASD,
        siteUrl: "https://myadmin7.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/iasd_myadmin",
      ),
      Project(
        name: "Calculadora",
        description:
            "O aplicativo de calculadora desenvolvido em Flutter permite aos usuários realizar operações aritméticas básicas, como adição, subtração, multiplicação e divisão.",
        type: "Front-end",
        imageUrl: AppImage.calculadora,
        siteUrl: "https://calculadora-lcs.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/calculadora",
      ),
    ];
  }
}
