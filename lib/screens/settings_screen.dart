import 'package:e_wallet/widgets/settings_grid_view.dart';
import 'package:e_wallet/widgets/settings_item.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<SettingsItem> items = [
    SettingsItem(
      title: "Wallet Security",
      titleColor: Colors.white,
      tileColor: Colors.blue,
      icon: Icons.safety_check,
    ),
    SettingsItem(
      title: 'Push Notification',
      titleColor: Colors.white,
      tileColor: Colors.purpleAccent,
      icon: Icons.notification_important_rounded,
    ),
    SettingsItem(
      title: "Price Alert",
      titleColor: Colors.white,
      tileColor: Colors.black,
      icon: Icons.shape_line,
    ),
    SettingsItem(
      title: "Help & Support",
      titleColor: Colors.black,
      tileColor: Colors.white,
      icon: Icons.help,
    ),
    SettingsItem(
      title: "Account",
      titleColor: Colors.white,
      tileColor: Colors.cyan,
      icon: Icons.group,
    ),
    SettingsItem(
      title: "About",
      titleColor: Colors.white,
      tileColor: Colors.grey.shade900,
      icon: Icons.info,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Text(
            "Settings",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.0, top: 8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Action when the button is pressed
              },
            ),
          ),
          // Space between the button and the edge
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
        child: SettingsGridView(items: items),
      ),
    );
  }
}
