import 'package:flutter/material.dart';


class UnderlineTextButton extends StatefulWidget {
  final String name;
  final VoidCallback onTap;
  final IconData? leftIcon;
  final Icon? rightIcon;
  final String fontFamily;
  final FontWeight? fontWeight;
  const UnderlineTextButton({super.key, required this.name, required this.onTap, this.leftIcon, this.rightIcon, required this.fontFamily, this.fontWeight});

  @override
  State<UnderlineTextButton> createState() => _UnderlineTextButtonState();
}

class _UnderlineTextButtonState extends State<UnderlineTextButton> {

  bool isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
      onHover: (onHover) => setState(() => isOnHover = onHover),
      onTap: widget.onTap,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          if(widget.leftIcon != null) Icon(widget.leftIcon, size: 15,),
          Text(widget.name,
            textWidthBasis: TextWidthBasis.longestLine,
            style: TextStyle(fontSize: 13,decoration: isOnHover ? TextDecoration.underline : TextDecoration.none, fontFamily: widget.fontFamily, fontWeight: widget.fontWeight),
          ),
          if(widget.rightIcon != null) widget.rightIcon!,
        ],
      ),
    );
  }
}


