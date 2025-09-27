import 'package:e_wallet/widgets/settings_item.dart';
import 'package:flutter/material.dart';

class SettingsGridView extends StatelessWidget {
  const SettingsGridView({super.key, required this.items});
  final List<SettingsItem> items;

  @override
  Widget build(context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 1,
        crossAxisCount: 2,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return item;
      },
    );
  }
}
