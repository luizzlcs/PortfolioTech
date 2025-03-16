import 'package:flutter/material.dart';
import 'package:my_profile/src/domain/repositories/profile_repository_impl.dart';
import 'package:my_profile/src/domain/usecases/get_profile.dart';
import 'package:my_profile/src/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'May Profile',
      home: HomePage(
        getProfile: GetProfile(ProfileRepositoryImpl()),
      ),
    );
  }

}