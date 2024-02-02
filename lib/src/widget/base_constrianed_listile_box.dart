import 'package:flutter/material.dart';
import 'package:myportfolio/src/tool/fonts.dart';
import 'package:myportfolio/src/widget/base_constrained_box.dart';

class BaseConstrainedListTileBox extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool isOutsideColumn;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String? fontFamily;
  const BaseConstrainedListTileBox({super.key, required this.title, required this.children, this.fontWeight, this.fontSize, this.fontFamily, this.isOutsideColumn = false});

  @override
  Widget build(BuildContext context) {
    return BaseConstrainedBox(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        titleAlignment: ListTileTitleAlignment.top,
        title: Text(title,
            style: TextStyle(
                fontFamily: fontFamily ?? Font.robotoBold,
                fontSize: fontSize ?? 20,
                fontWeight: fontWeight ?? FontWeight.w900,
            ),
        ),
        subtitle: isOutsideColumn ? children.first : Column( children: children, ),
      ),
    );
  }
}
