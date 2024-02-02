import 'package:flutter/material.dart';

import 'package:myportfolio/src/tool/fonts.dart';
import 'package:myportfolio/src/widget/base_constrianed_listile_box.dart';

class AboutProfile extends StatelessWidget {
  final String about;
  const AboutProfile({super.key, required this.about});

  @override
  Widget build(BuildContext context) {

    return BaseConstrainedListTileBox(
      title: "About",
      children: [
        Text(about,style: const TextStyle(fontFamily: Font.robotoRegular, fontSize: 15)),
      ],
    );
  }
}
