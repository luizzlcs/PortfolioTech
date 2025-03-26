import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:portfolio_tech/locator.dart';
import 'package:portfolio_tech/src/constants/app_image.dart';
import 'package:portfolio_tech/src/domain/entities/project.dart';
import 'package:portfolio_tech/src/domain/repositories/project_repository.dart';
import 'package:portfolio_tech/src/presentation/widgets/button_link.dart';
import 'package:portfolio_tech/src/presentation/widgets/project_card_turbo.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final ProjectRepository _repository = getIt<ProjectRepository>();
  bool loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final larguraDaTela = mediaQuery.size.width;

    debugPrint('larguraDaTela + ${larguraDaTela.toString()}');

    return Scaffold(
      appBar: AppBar(title: Text("Projetos")),
      body:
          loading
              ? Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: FutureBuilder<List<Project>>(
                future: _repository.getProjects(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        "Erro ao carregar projetos: ${snapshot.error}",
                      ),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text("Nenhum projeto encontrado"));
                  }

                  final projects = snapshot.data!;

                  return GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          larguraDaTela > 1089
                              ? 3
                              : larguraDaTela > 606
                              ? 2
                              : 1, //colunas
                      crossAxisSpacing:
                          16, // Espaçamento horizontal entre os itens
                      mainAxisSpacing:
                          16, // Espaçamento vertical entre os itens
                      childAspectRatio: 1.22, // Proporção de aspecto dos itens
                    ),
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      final project = projects[index];
                      return ProjectCardTurbo(project: project);
                    },
                  );
                },
              ),
              )
              : FutureBuilder<List<Project>>(
                future: _repository.getProjects(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        "Erro ao carregar projetos: ${snapshot.error}",
                      ),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text("Nenhum projeto encontrado"));
                  }

                  final projects = snapshot.data!;

                  return GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          larguraDaTela > 1089
                              ? 3
                              : larguraDaTela > 606
                              ? 2
                              : 1, //colunas
                      crossAxisSpacing:
                          16, // Espaçamento horizontal entre os itens
                      mainAxisSpacing:
                          16, // Espaçamento vertical entre os itens
                      childAspectRatio: 1.22, // Proporção de aspecto dos itens
                    ),
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      final project = projects[index];
                      return ProjectCardTurbo(project: project);
                    },
                  );
                },
              ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 167, 131, 26),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(project.imageUrl, fit: BoxFit.fill),
                ),
              ),
              Divider(),
              // Nome e tipo do projeto
              SelectableText(
                project.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SelectableText('✅ ${project.type}'),
              // Descrição do projeto
              Expanded(
                child: SingleChildScrollView(
                  child: SelectableText(
                    project.description,
                    style: TextStyle(fontSize: 10.5),
                  ),
                ),
              ),
              // Links do site e GitHub
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Visibility(
                    visible: project.siteUrl.isNotEmpty,
                    child: ButtonLink(
                      descriptionButton: 'App Web',
                      icon: Icons.link_sharp,
                      url: project.siteUrl,
                      useIcon: false,
                      whidth: 40,
                    ),
                  ),
                  // SizedBox(width: 8), // Espaçamento entre os botões
                  ButtonLink(
                    descriptionButton: 'Projeto no GitHub',
                    url: project.githubUrl,
                    useIcon: true,
                    image: AppImage.gitHub,
                    whidth: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
