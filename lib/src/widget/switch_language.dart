import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchLanguage extends StatefulWidget {
  final String  language;
  final Function(bool) onTap;
  const SwitchLanguage({super.key, required this.language, required this.onTap});

  @override
  State<SwitchLanguage> createState() => _SwitchLanguageState();
}

class _SwitchLanguageState extends State<SwitchLanguage> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeThumbImage: const AssetImage('images/language/en.png'),
      activeColor: widget.language == "en" ? const Color(0xFF1E68BE) : const Color(0xFF1E68BE).withOpacity(0.5),
      dragStartBehavior: DragStartBehavior.down,
      inactiveThumbImage: const AssetImage('images/language/es.png'),
      inactiveTrackColor: widget.language == "en" ? const Color(0xFF009571) : const Color(0xFF009571).withOpacity(0.5),
      inactiveThumbColor: const Color(0xFF009571),
      trackOutlineColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.selected)
          ? const Color(0xFF1E68BE)
          : const Color(0xFF009571)
      ),
      activeTrackColor: widget.language == "en" ? const Color(0xFF1E68BE) : const Color(0xFF1E68BE).withOpacity(0.5),
      value: widget.language == "en",
      onChanged: (value) => setState(() => widget.onTap(value)),
    );
  }
}
