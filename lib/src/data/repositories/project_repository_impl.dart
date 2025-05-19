import 'package:portfolio_tech/src/constants/app_image.dart';
import 'package:portfolio_tech/src/domain/entities/project.dart';
import 'package:portfolio_tech/src/domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<List<Project>> getProjects() async {
    // await Future.delayed(Duration(seconds: 1)); 
    return [
      Project(
        name: "Página de vendas SendMessage - HTML e CSS",
        description:
            'Landing page comercial com seções estratégicas (benefícios, demonstração, depoimentos, CTA) usando tags semânticas (<section>, <header>, <footer>) para SEO e acessibilidade.',
        type: "Front-end",
        imageUrl: AppImage.sendMessageSales,
        siteUrl: "https://salessendmessage.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/netlify_sales_page_send_message",
      ),
      Project(
        name: "Documentação SendMessage - HTML e CSS",
        description:
            'Cria uma documentação interativa para o "Send Message to WhatsApp", com navegação por sidebar, seções organizadas em cards e elementos semânticos (como <section> e <main>) para melhor acessibilidade e SEO.',
        type: "Front-end",
        imageUrl: AppImage.sendMessage,
        siteUrl: "https://senddoc.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/netlify_SendMessage",
      ),
      Project(
        name: "DSCommerce - Java",
        description:
            "Oferece recursos como Autenticação e segurança: Utilizando OAuth2, Resource Server, JWT e BCrypt, garantindo um ambiente seguro para todos os usuários, produtos e categorias, além de processamento de pedidos, integrando bancos de dados H2.",
        type: "Back-end",
        imageUrl: AppImage.dsCommerce,
        siteUrl: "",
        githubUrl: "https://github.com/luizzlcs/dscommerce",
      ),
      Project(
        name: "DSEvent - Java",
        description:
            "Projeto com Spring Boot com Java e banco de dados H2, e implementando um modelo conceitual conforme especificação a seguir. Além disso, contém um seeding da base de dados conforme diagrama de objetos que segue.",
        type: "Back-end",
        imageUrl: AppImage.dsEvent,
        siteUrl: "",
        githubUrl: "https://github.com/luizzlcs/dsevent",
      ),
      Project(
        name: "DSClient - Java",
        description:
            "Projeto Spring Boot contendo um CRUD completo de web services REST para acessa um recurso de clientes, contendo as cinco operações básicas: Busca paginada de recursos, Busca de recurso por id, Inserir novo recurso, Atualizar recurso, Deletar recurso.",
        type: "Back-end",
        imageUrl: AppImage.dsClient,
        siteUrl: "",
        githubUrl: "https://github.com/luizzlcs/dsClient",
      ),
      Project(
        name: "Diretório de links",
        description:
            "Diretório centralizador de links, conexão com API do Google Sheets, roteamento direto para páginas institucionais, menu de compartilhamento personalizado com opções de copiar e compartilhar, sistema de mensagens personalizadas para cada link, Rastreamento de análises de acesso (visualizações de página e cliques em botões) Integração com Google Sheets para armazenamento de dados, Gerenciamento de variáveis de ambiente para armazenamento seguro de credenciais.",
        type: "Front-end",
        imageUrl: AppImage.diretorioDeLinks,
        siteUrl: "https://adventistasc.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/adventistasc",
      ),
      Project(
        name: "Campo minado",
        description:
            'O aplicativo possui Tabuleiro Interativo: Campos clicáveis para revelar se há minas, Toque longo para marcar/desmarcar suspeitas de minas, Geração aleatória de minas no início do jogo, Regras do Jogo:Ao abrir um campo com mina, o jogo termina (derrota), Se todos os campos sem minas forem abertos, o jogador vence, Campos adjacentes mostram o número de minas próximas, Ícones intuitivos (💣 para minas, 🚩 para marcações), Feedback visual ao vencer ou perder.',
        type: "Front-end",
        imageUrl: AppImage.campoMinado,
        siteUrl: "https://campominado-lcs.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/campo_minado",
      ),
      Project(
        name: "Seven Manager",
        description:
            "Login com e-mail e senha, Registro de novos usuários, Validação de campos em tempo real, Gerenciamento de sessão de usuário, Edição de dados pessoais, Upload de foto de perfil, Navegação Modular com Rotas nomeadas, Transições customizadas entre telas.",
        type: "Front-end",
        imageUrl: AppImage.sevenManager,
        siteUrl: "https://sevenmaneger.netlify.app",
        githubUrl: "https://github.com/luizzlcs/seven_manager7",
      ),
      Project(
        name: "Educativa",
        description:
            "Gerenciamento de Estado com signals_flutter, Injeção de Dependência com flutter_getit, Validação e Formatação de Dados utilizando os pacotes validatorless e brasil_fields, componentização de código possibilitando que o mesmo código base seja utilizado para diferentes ambientes.",
        type: "Front-end",
        imageUrl: AppImage.sincofarma,
        siteUrl: "https://educativa.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/sincofarma",
      ),
      Project(
        name: "Administrativo IASD",
        description:
            "O projeto adota uma estrutura modular, separando modelo, visualizações, serviços e tratamento de exceções para facilitar a manutenção e escalabilidade. Integra Firebase para autenticação e operações com Firestore, permitindo gerenciamento de dados em tempo real. As interfaces são organizadas em módulos específicos (dashboard, login, departamentos e secretaria), formando um painel administrativo completo.",
        type: "Front-end",
        imageUrl: AppImage.administrativoIASD,
        siteUrl: "https://myadmin7.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/iasd_myadmin",
      ),
      Project(
        name: "Calculadora",
        description:
            "O projeto é um aplicativo Flutter que implementa uma calculadora básica com operações aritméticas.A estrutura do código é modular, dividindo a lógica e a interface em widgets customizados para display e botões. Utiliza stateful widgets para gerenciar e atualizar dinamicamente os cálculos conforme o usuário interage. A interface é simples e responsiva, priorizando a usabilidade e clareza na apresentação dos dados.",
        type: "Front-end",
        imageUrl: AppImage.calculadora,
        siteUrl: "https://calculadora-lcs.netlify.app/",
        githubUrl: "https://github.com/luizzlcs/calculadora",
      ),
    ];
  }
}
