import 'package:flutter/material.dart';

import 'package:myportfolio/src/widget/base_constrianed_listile_box.dart';
import 'package:myportfolio/src/widget/info_tag.dart';

class SkillsProfile extends StatelessWidget {
  final List<String> skills;
  const SkillsProfile({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {

    return BaseConstrainedListTileBox(
      title: "Skills",
      isOutsideColumn: true,
      children: [
        Wrap(
          direction: Axis.horizontal,
          runSpacing: 5,
          spacing: 5,
          children: [
            ...skills.map((skill) => InfoTag(
              textInfoTag: skill,
              inverseColors: true,
            ))
          ],
        ),
      ],
    );
  }
}
