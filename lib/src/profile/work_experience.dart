import 'package:flutter/material.dart';
import 'package:myportfolio/src/model/profile.dart';

import 'package:myportfolio/src/widget/base_constrianed_listile_box.dart';
import 'package:myportfolio/src/widget/text_info_listtile.dart';

class WorkExperience extends StatelessWidget {
  final List<Work> workExperience;
  const WorkExperience({super.key, required this.workExperience});

  @override
  Widget build(BuildContext context) {

    return BaseConstrainedListTileBox(
      title:"Work Experience" ,
      children: [
        ...workExperience.map((work) =>
            TextInfoListTile(
              title: work.company,
              textInfoTag: work.badges.first,
              titleTrailing: '${work.start} - ${work.end}',
              subtitle: work.title,
              subtitleInfo: work.description,
            ),
        )
      ],
    );
  }
}
