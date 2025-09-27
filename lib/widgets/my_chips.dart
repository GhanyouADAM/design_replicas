import 'package:flutter/material.dart';

class MyChips extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const MyChips({
    super.key,
    required this.label,
    this.color = const Color.fromARGB(255, 44, 43, 58),
    this.textColor = Colors.white,
    this.onPressed,
    this.height = 40,
    this.width = 116,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(18),
      splashColor: Colors.black,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodySmall!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
