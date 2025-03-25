import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.article_rounded),
            const SizedBox(width: 5),
            SelectableText(
              "CURRÍCULO",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800, minWidth: 250),

          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Seção de Experiência Profissional
                _buildSectionTitle("Experiência Profissional", Icons.work),
                _buildExperienceItem(
                  "Desenvolvedor Mobile e Web",
                  "Ponto Care Franchising e Consultoria",
                  "2021 - Atual",
                  [
                    "Desenvolvimento e manutenção de aplicativos mobile multiplataforma em Flutter, aplicando Clean Architecture e integração com Firebase.",
                    "Desenvolvimento de script automatizado em Node.js para extração e processamento de dados do Firebase, gerando relatórios estruturados em formato JSON para análise e tomada de decisão.",
                    "Implementação de novas funcionalidades conforme requisitos dos clientes.",
                    "Levantamento e análise de requisitos técnicos em reuniões com stakeholders, traduzindo necessidades de negócio em especificações de desenvolvimento e priorizando funcionalidades para entrega de soluções personalizadas.",
                  ],
                  [
                    "Node.js, Dart, Flutter, Firebase (Firestore, Storage, Authentication)",
                    "Gerenciadores de estado (MobX, ValueNotifier, ChangeNotifier)",
                    "Injeção de dependência (Get It)",
                  ],
                ),
                _buildExperienceItem(
                  "Gerente Administrativo Financeiro",
                  "Dental Med Center",
                  "2010 - 2020",
                  [
                    "Análises de dados:",
                    "Desenvolvimento de consultas SQL, relatórios e automação de processos no Microsoft Access com VBA.",
                    "Análise de dados e criação de dashboards interativos no Microsoft Excel, utilizando Tabelas Dinâmicas, Power Query e Power Pivot.",
                    "Planejamento e controle orçamentário, Gestão do fluxo de caixa, Faturamento e cobrança, relacionamento com bancos e fornecedores, gestão de repasses, atendimento à ANS, gestão de contratos, Gerenciamento de riscos e auditorias, aprimoramento de processos internos.",
                  ],
                  [],
                ),

                // Seção de Formação
                SizedBox(height: 24),

                // Seção de Cursos e Certificações
                _buildSectionTitle("Cursos e Certificações", Icons.article),
                _buildCourseItem(
                  url: 'https://devsuperior.club/c/5-5711',
                  course: "Java Backend",
                  institution: "DevSuperior com professor Nélio Alves",
                  year: "2024",
                ),
                _buildCourseItem(
                  course: "JavaScript",
                  institution: "Hashtag",
                  year: "2024",
                ),
                _buildCourseItem(
                  course: "Python",
                  institution: "Hashtag",
                  year: "2023",
                ),
                _buildCourseItem(
                  url:
                      'https://ll-app-certificates.s3.sa-east-1.amazonaws.com/89685a45-ad9c-47ab-86e8-31b9bd4bd70d.png',
                  course: "Flutter Master Class",
                  institution: "Flutterando",
                  year: "2021-2022",
                ),
                _buildCourseItem(
                  course: "Dart Week",
                  institution: "Academia do Flutter",
                  year: "2023",
                  url:
                      'https://file.notion.so/f/f/a3adf51a-bad3-4c29-890a-100bf6e25e65/dc7bf144-c553-49b0-83f1-6785d8a330b8/CertificadoDartWeek11.pdf?table=block&id=1c1e2e57-f164-800b-bf84-ecc429b4a9e3&spaceId=a3adf51a-bad3-4c29-890a-100bf6e25e65&expirationTimestamp=1742940000000&signature=FIHHNtDkSW5VE5HbttSRLc3OF1PoM0ImFKbqOF1G00Q&downloadName=CertificadoDartWeek11.pdf',
                ),
                _buildCourseItem(
                  course: "Dart e Flutter",
                  institution: "Professor Leonardo Moura Brandão",
                  year: "2021",
                ),
                _buildCourseItem(
                  course: "Programador Java",
                  institution: "SENAC-RN",
                  year: "2017",
                  url:
                      'https://file.notion.so/f/f/a3adf51a-bad3-4c29-890a-100bf6e25e65/22ae227f-fb2b-4492-9864-95600e17d343/Programador_Java.pdf?table=block&id=1b2e2e57-f164-80d9-92a1-e0594cb5a637&spaceId=a3adf51a-bad3-4c29-890a-100bf6e25e65&expirationTimestamp=1742940000000&signature=TvDQkze6SnLLB95zd1THbEyL_shRVqLBwiU63_TPByQ&downloadName=Programador+Java.pdf',
                ),
                SizedBox(height: 24),

                // Seção de Competências Técnicas
                _buildSectionTitle("Competências Técnicas", Icons.code),
                _buildSkillItem("Back-End", [
                  "Java, Maven",
                  "Spring Boot, API RESTful",
                  "Orientação a Objetos",
                  "Persistência (SQL/NoSQL)",
                ]),
                _buildSkillItem("Front-End/Mobile", [
                  "Dart, Flutter (Android e Web)",
                  "JavaScript (NodeJS)",
                  "Python",
                ]),
                _buildSkillItem("DevOps e Ferramentas", [
                  "Git, GitHub",
                  "VSCode, AndroidStudio, Eclipse, IntelliJ",
                ]),
                _buildSkillItem("Banco de Dados e Cloud", [
                  "SQL, NoSQL",
                  "Firebase (Firestore, Storage, Authentication)",
                ]),
                SizedBox(height: 24),

                // Seção de Idiomas
                _buildSectionTitle("Idiomas", Icons.language),
                _buildLanguageItem("Português", "Nativo"),
                _buildLanguageItem("Inglês", "A2"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Função para criar títulos de seção com ícone e linha amarela
  Widget _buildSectionTitle(String title, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.black), // Ícone escuro
          title: SelectableText(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Colors.amber, // Linha amarela
          thickness: 2,
        ),
        SizedBox(height: 16),
      ],
    );
  }

  // Função para criar itens de experiência profissional
  Widget _buildExperienceItem(
    String title,
    String company,
    String period,
    List<String> descriptions,
    List<String> technologies,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: SelectableText(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: SelectableText(
              company,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: SelectableText(
              period,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ),
          SizedBox(height: 8),

          ...descriptions.map(
            (description) => Padding(
              padding: EdgeInsets.only(left: 90, bottom: 8),
              child: SelectableText(
                "- $description",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          if (technologies.isNotEmpty) ...[
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: SelectableText(
                "Tecnologias utilizadas:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ...technologies.map(
              (tech) => Padding(
                padding: EdgeInsets.only(left: 90, bottom: 4),
                child: SelectableText(
                  "- $tech",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  // Função para criar itens de formação
  // Widget _buildEducationItem(String course, String period, String institution) {
  //   return Padding(
  //     padding: EdgeInsets.only(bottom: 16),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(left: 50),
  //           child: Text(
  //             course,
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //         ),
  //         SizedBox(height: 4),
  //         Text(period, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
  //         SizedBox(height: 4),
  //         Text(
  //           institution,
  //           style: TextStyle(fontSize: 16, color: Colors.grey[600]),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Função para criar itens de cursos e certificações

  Widget _buildCourseItem({
    required String course,
    required String institution,
    required String year,
    String? url,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          url != null
              ? GestureDetector(
                onTap: () async {
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(
                      Uri.parse(url),
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    course,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
              : SelectableText(
                course,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          SizedBox(height: 4),
          SelectableText(
            "$institution - $year",
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  // Função para criar itens de competências técnicas
  Widget _buildSkillItem(String category, List<String> skills) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            category,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ...skills.map(
            (skill) => Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: SelectableText("- $skill", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  // Função para criar itens de idiomas
  Widget _buildLanguageItem(String language, String level) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: SelectableText(
        "$language: $level",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
