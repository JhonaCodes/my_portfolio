import 'package:flutter/material.dart';
import 'package:myportfolio/src/widget/base_constrianed_listile_box.dart';
import 'package:myportfolio/src/widget/info_tag.dart';

class HobbiesProfile extends StatelessWidget {
  final List<String> hobbieList;
  const HobbiesProfile({super.key, required this.hobbieList});

  @override
  Widget build(BuildContext context) {

    return BaseConstrainedListTileBox(
      title: "Hobbies",
      isOutsideColumn: true,
      children: [
        Wrap(
          direction: Axis.horizontal,
          runSpacing: 5,
          spacing: 5,
          children: [
            ...hobbieList.map((skill) => InfoTag(
              textInfoTag: skill,
              inverseColors: true,
            ))
          ],
        ),
      ],
    );
  }
}
