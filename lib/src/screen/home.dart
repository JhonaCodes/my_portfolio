import 'package:flutter/material.dart';
import 'package:myportfolio/src/model/profile.dart';
import 'package:myportfolio/src/profile/about_profile.dart';
import 'package:myportfolio/src/profile/education_profile.dart';
import 'package:myportfolio/src/profile/overview_profile.dart';
import 'package:myportfolio/src/profile/projects_profile.dart';
import 'package:myportfolio/src/profile/skills_profile.dart';
import 'package:myportfolio/src/profile/work_experience.dart';

import '../profile/hobbies_profile.dart';

class Home extends StatelessWidget {
  final ProfileClass profile;
  const Home({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const  EdgeInsets.only(bottom: 50, left: 20, right: 20),
      child: Center(
        child: Column(
          children: [

            OverviewProfile(profile: profile,),

            const SizedBox(height: 10,),
            AboutProfile(
              about: profile.summary,
            ),

            const SizedBox(height: 15,),
            WorkExperience( workExperience: profile.work, ),

            const SizedBox(height: 10,),
            EducationProfile( education: profile.education, ),

            const SizedBox(height: 10,),
            SkillsProfile(
              skills: profile.skills,
            ),

            const SizedBox(height: 10,),
            ProjectsProfile( projectList: profile.projects, ),

            const SizedBox(height: 10,),
            HobbiesProfile( hobbieList: profile.hobbies, ),

          ],
        ),
      ),
    );
  }
}
