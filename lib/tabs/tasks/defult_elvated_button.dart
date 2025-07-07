import 'package:flutter/material.dart';
import 'package:todo/app_theme.dart';

class DefultElvatedButton extends StatelessWidget {
  String label;
  VoidCallback onPressed;
  DefultElvatedButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width, 52)),
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
