import 'package:flutter/material.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

class Actionbutton extends StatelessWidget {
    final Color? btnColor ;
  final IconData icon;
  final String Buttonlabel;
  const Actionbutton({super.key,required this.btnColor, required this.icon, required this.Buttonlabel});

  @override
  Widget build(BuildContext context) {
    return PrettySlideIconButton(
      foregroundColor: btnColor ?? Colors.green,
        icon: icon,
      label: Buttonlabel,
      slidePosition: SlidePosition.right,
      labelStyle: Theme.of(context).textTheme.bodyLarge!,
      onPressed:(){},
    );
  }
}
