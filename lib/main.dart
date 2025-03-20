import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:my_profile/locator.dart';
import 'package:my_profile/src/presentation/pages/home_page.dart';

void main() {
  setupLocator();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio Tech | Luiz Carlos',
      home: HomePage(
        // getProfile: GetProfile(ProfileRepositoryImpl()),
      ),
    );
  }

}