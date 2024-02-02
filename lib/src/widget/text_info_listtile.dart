import 'package:flutter/material.dart';
import 'package:myportfolio/src/tool/fonts.dart';
import 'package:myportfolio/src/widget/info_tag.dart';

import 'base_constrained_box.dart';

class TextInfoListTile extends StatelessWidget {
  final String title;
  final String? titleTrailing;
  final String? textInfoTag;
  final String? subtitle;
  final String? subtitleInfo;
  final bool inverseInfoTagColors;

  const TextInfoListTile({super.key, this.textInfoTag, this.inverseInfoTagColors = false, required this.title, this.titleTrailing, this.subtitle, this.subtitleInfo});

  @override
  Widget build(BuildContext context) {

    return BaseConstrainedBox(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        titleAlignment: ListTileTitleAlignment.top,
        trailing: Text( titleTrailing!, style: const TextStyle(fontFamily: Font.robotoLight), textAlign: TextAlign.end),
        title: Wrap(
          spacing: 10,
          direction: Axis.horizontal,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: Font.robotoBold,
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            if (textInfoTag != null) InfoTag(textInfoTag: textInfoTag!, inverseColors: inverseInfoTagColors)
          ],
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(subtitle != null ) Text(subtitle!, style: const TextStyle(fontFamily: Font.robotoRegular, fontSize: 15)),
            const SizedBox( height: 5,),
            if(subtitleInfo != null) Text(subtitleInfo!,style: const TextStyle(fontFamily: Font.robotoLight, fontSize: 12)),
          ],
        ),
        dense: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(
              style: BorderStyle.none,
              width: 0,
              color: Colors.transparent,
            )),
      ),
    );

  }
}
