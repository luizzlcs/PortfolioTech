import 'package:flutter/material.dart';
import 'package:my_profile/src/domain/entities/profile.dart';
import 'package:my_profile/src/domain/usecases/get_profile.dart';
import 'package:my_profile/src/presentation/widgets/profile_card.dart';

class HomePage extends StatelessWidget {
  final GetProfile getProfile;

  const HomePage({super.key, required this.getProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: FutureBuilder<Profile>(
        future: getProfile(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData) {
            return Center(child: Text("No data found"));
          } else {
            return ProfileCard(profile: snapshot.data!);
          }
        },
      ),
    );
  }
}