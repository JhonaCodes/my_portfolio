import 'package:flutter/material.dart';
import 'package:myportfolio/src/model/profile.dart';

import 'package:myportfolio/src/widget/base_constrianed_listile_box.dart';
import 'package:myportfolio/src/widget/project_card.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectsProfile extends StatelessWidget {
  final List<Project> projectList;
  const ProjectsProfile({super.key, required this.projectList});

  @override
  Widget build(BuildContext context) {

    return BaseConstrainedListTileBox(
      title: "Projects",
      isOutsideColumn: true,
      children: [
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceBetween,
          spacing: 5,
          runSpacing: 10,
          children: [
            ...projectList.map((project) => ProjectCard(
              project: project,
              onTap: () async => project.link.href != "under" ? await launchUrlString(project.link.href) : null,
            ),
            )
          ],
        ),
      ],
    );

  }
}
