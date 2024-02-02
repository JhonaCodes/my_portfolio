import 'package:flutter/material.dart';
import 'package:myportfolio/src/infrastructure/api.dart';
import 'package:myportfolio/src/model/profile.dart';
import 'package:myportfolio/src/screen/home.dart';

import 'package:myportfolio/src/widget/switch_language.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jhonacode',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MainLayout(),
    );
  }
}


class MainLayout extends StatefulWidget {

  MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {

  final Api _api = Api();
  String _language = "en";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [

            SwitchLanguage(
              language: _language,
              onTap: (value)=> setState(() => _language = value ? "en": "es"),
            ),
          ],
        ),

        body: FutureBuilder<Map<String,dynamic>>(
          future: _api.getProfileData(),
          builder: (context, AsyncSnapshot<Map<String,dynamic>> profile){

            if(profile.connectionState.name == "done"){
              Profile profileData = Profile.fromJson(profile.data![_language]);
              if(profile.hasData) return Home(profile: profileData.profile);
            }

            if(profile.hasError) return Center(child: Text('Error: ${profile.hasData}'),);

              return const Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator.adaptive(),
                ),
              );

          },
        )
      ),
    );
  }
}













