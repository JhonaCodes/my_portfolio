import 'package:flutter/material.dart';

class BaseConstrainedBox extends StatelessWidget {
  final Widget child;
  const BaseConstrainedBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints( maxWidth: 700,  minWidth: 300 ),
      child: child,
    );
  }
}
