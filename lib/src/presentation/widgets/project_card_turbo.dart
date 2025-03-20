import 'package:flutter/material.dart';
import 'package:portfolio_tech/src/constants/app_image.dart';
import 'package:portfolio_tech/src/domain/entities/project.dart';
import 'package:portfolio_tech/src/presentation/widgets/button_link.dart';

class ProjectCardTurbo extends StatelessWidget {
  final Project project;

  const ProjectCardTurbo({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 10),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            width: 450,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5, top: 5),
                  child: Container(
                    height: 170,
                    width: 450, // Altura fixa para a imagem
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        project.imageUrl,
                        fit: BoxFit.fill, // Cobrir o espaço disponível
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SelectableText(
                      project.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SelectableText(
                      '✅ ${project.type}',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Center(
                    // alignment: Alignment.center,
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(82, 119, 165, 177),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            maxLines: 3,
                            project.description,
                            style: TextStyle(fontSize: 10),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Visibility(
                        visible: project.siteUrl.isNotEmpty,
                        child: ButtonLink(
                          icon: Icons.link_sharp,
                          url: project.siteUrl,
                          useIcon: false,
                          whidth: 20,
                        ),
                      ),
                      // SizedBox(width: 8), // Espaçamento entre os botões
                      ButtonLink(
                        url: project.githubUrl,
                        useIcon: true,
                        image: AppImage.gitHub,
                        whidth: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
