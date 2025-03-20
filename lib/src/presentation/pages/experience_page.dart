import 'package:flutter/material.dart';

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
                  "Java Backend",
                  "DevSuperior com professor Nélio Alves",
                  "2024",
                ),
                _buildCourseItem("JavaScript", "Hashtag", "2024"),
                _buildCourseItem("Python", "Hashtag", "2023"),
                _buildCourseItem(
                  "Flutter Master Class",
                  "Flutterando",
                  "2021-2022",
                ),
                _buildCourseItem("Dart/Flutter", "Academia do Flutter", "2021"),
                _buildCourseItem(
                  "Dart e Flutter",
                  "Professor Leonardo Moura Brandão",
                  "2021",
                ),
                _buildCourseItem("Programador Java", "SENAC-RN", "2017"),
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
            ...technologies
                .map(
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
  Widget _buildCourseItem(String course, String institution, String year) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
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
