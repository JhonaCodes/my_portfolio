import 'package:flutter/material.dart';
import 'package:myportfolio/src/tool/fonts.dart';
import 'package:myportfolio/src/widget/base_constrianed_listile_box.dart';
import 'package:myportfolio/src/widget/text_info_listtile.dart';

import '../model/profile.dart';

class EducationProfile extends StatelessWidget {
  final List<Education> education;
  const EducationProfile({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return BaseConstrainedListTileBox(
      title: "Education",
      children: [
        ...education.map((edu) =>
            TextInfoListTile(
              title: edu.school,
              titleTrailing: '${edu.start} - ${edu.end}',
              subtitle: edu.degree,
            ),
        )
      ],
    );

  }
}
