import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({ required this.title, required this.colour, required this.onPressed});

  final Color colour;
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(22.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 120.0,
          height: 48.0,
          child: Text(
            title,
            style: const TextStyle(
              color:  Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}