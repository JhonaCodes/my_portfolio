import 'package:flutter/material.dart';

class SocialIconButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPress;
  const SocialIconButton({super.key, required this.icon, required this.onPress});

  @override
  State<SocialIconButton> createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {

  bool isOnHover = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all( color: Colors.blueGrey, width: 0.2, ),
        color: isOnHover ? const Color(0xFFDEE1E7).withOpacity(0.2) : Colors.white,
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
        onHover: (onHover) => setState(() => isOnHover = onHover),
        onTap: widget.onPress,
        child: Icon(widget.icon, color: isOnHover ? Colors.black : Colors.black54, size: 15, ),
      ),
    );
  }
}