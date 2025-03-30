import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:portfolio_tech/locator.dart';
import 'package:portfolio_tech/src/constants/app_image.dart';
import 'package:portfolio_tech/src/constants/app_links.dart';
import 'package:portfolio_tech/src/domain/entities/profile.dart';
import 'package:portfolio_tech/src/domain/repositories/profile_repository.dart';
import 'package:portfolio_tech/src/presentation/pages/experience_page.dart';
import 'package:portfolio_tech/src/presentation/pages/projects_page.dart';
import 'package:portfolio_tech/src/presentation/widgets/button_link.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    HomeContent(),
    ExperiencePage(),
    ProjectsPage(),
  ];

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Formação',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projetos'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  HomeContent({super.key});

  final ProfileRepository _profileRepository = getIt<ProfileRepository>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Profile>(
      future: _profileRepository.getProfile(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Erro ao carregar o perfil: ${snapshot.error}"),
          );
        } else if (!snapshot.hasData) {
          return Center(child: Text("Nenhum dado encontrado"));
        }
        final profile = snapshot.data!;

        return SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    // Container azul na parte superior
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(255, 255, 193, 7),
                    ),

                    Positioned(
                      bottom: 0,
                      left:
                          MediaQuery.of(context).size.width * 0.5 -
                          120, // Centraliza horizontalmente
                      child: CircleAvatar(
                        radius: 120,
                        backgroundColor: Color.fromARGB(255, 255, 193, 7),
                        backgroundImage: AssetImage(AppImage.perfil),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8), // Espaço para o CircleAvatar
              SelectableText(
                profile.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: SelectableText(
                  textAlign: TextAlign.center,                    
                  profile.role,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonLink(
                    descriptionButton: 'E-mail',
                    image: AppImage.email,
                    url: AppLinks.email,
                    useIcon: true,
                    whidth: 40,
                  ),
                  SizedBox(width: 10),
                  ButtonLink(
                    descriptionButton: 'GitHub',
                    image: AppImage.gitHub,
                    url: AppLinks.gitHub,
                    useIcon: true,
                    whidth: 40,
                  ),
                  SizedBox(width: 10),
                  ButtonLink(
                    descriptionButton: 'LinkedIn',
                    image: AppImage.linkedin,
                    url: AppLinks.linkedin,
                    useIcon: true,
                    whidth: 40,
                  ),
                  SizedBox(width: 10),
                  ButtonLink(
                    descriptionButton: 'WhastApp',
                    image: AppImage.whatsApp,
                    url: AppLinks.whatsApp,
                    useIcon: true,
                    whidth: 40,
                  ),
                  ButtonLink(
                    descriptionButton: 'Currículo',
                    image: AppImage.curriculo,
                    url: AppLinks.curriculo,
                    useIcon: true,
                    whidth: 40,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
