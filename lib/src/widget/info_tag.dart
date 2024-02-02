import 'package:flutter/material.dart';
import 'package:myportfolio/src/tool/fonts.dart';

class InfoTag extends StatefulWidget {
  final bool inverseColors;
  final EdgeInsets? margins;
  final String textInfoTag;
  final double? fontSize;
  final String? fontFamily;
  const InfoTag({super.key, this.inverseColors =false, this.margins, required this.textInfoTag, this.fontSize, this.fontFamily});

  @override
  State<InfoTag> createState() => _InfoTagState();
}

class _InfoTagState extends State<InfoTag> {

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit:  (_) => setState(() => isHovered = false),
      child: Container(
        padding: widget.margins ?? const EdgeInsets.only(left: 6, right: 6,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: widget.inverseColors ? _colorOnHovered(const Color(0XFF323641))  : _colorOnHovered( const Color(0XFFF0F1F4))
        ),
        child: Text(widget.textInfoTag, style: TextStyle(fontFamily: widget.fontFamily ?? Font.robotoBold, color: widget.inverseColors ? const Color(0XFFF0F1F4) : const Color(0XFF323641), fontSize: widget.fontSize),),
      ),
    );
  }
  _colorOnHovered(Color color) => isHovered ? color.withOpacity(0.6) : color;
}
