import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.title,
    required this.titleColor,
    required this.tileColor,
    required this.icon,
  });
  final String title;
  final Color titleColor;
  final Color tileColor;
  final IconData icon;
  @override
  Widget build(context) {
    return Container(
      height: 128,
      width: 128,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(24),
        color: tileColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 142),
            child: Icon(Icons.arrow_forward, color: titleColor),
          ),
          const Spacer(),
          Icon(icon, color: titleColor, size: 28),
          SizedBox(height: 8),
          Text(title, style: TextStyle(color: titleColor, fontSize: 17)),
        ],
      ),
    );
  }
}
