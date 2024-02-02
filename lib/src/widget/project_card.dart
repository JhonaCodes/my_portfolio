import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/src/model/profile.dart';
import 'package:myportfolio/src/tool/fonts.dart';
import 'package:myportfolio/src/widget/info_tag.dart';

import 'package:myportfolio/src/widget/undeline_text_button.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final VoidCallback onTap;
  const ProjectCard({super.key, required this.project, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width < 490 ? double.infinity : 220,
      constraints: BoxConstraints(
        minHeight: size.width < 490 ? 70 : 120,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.blueGrey.withOpacity(0.7),
          width: 1,
          strokeAlign: 1
        )
      ),
      child: ListTile(
        title: UnderlineTextButton(
          name: project.title,
          fontFamily: Font.robotoBold,
          fontWeight: FontWeight.w900,
          rightIcon: Icon(FontAwesomeIcons.circleDot, size: 7, color: project.link.href == "under" ? Colors.red : Colors.green,),
          onTap: onTap,
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project.description, style: const TextStyle(fontFamily: Font.robotoLight, fontSize: 12),),
            const SizedBox(height: 10,),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: 5,
              spacing: 5,
              children: [
                ...project.techStack.map((stack) => InfoTag(
                  textInfoTag: stack,
                  fontSize: 10,
                  fontFamily: Font.robotoBold,
                ))
              ],
            ),

          ],
        ),
      )
    );
  }
}
