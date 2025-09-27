import 'package:flutter/material.dart';

class CryptoItem extends StatelessWidget {
  const CryptoItem({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tileColor: const Color.fromARGB(255, 44, 43, 58),
      leading: ClipOval(
        child: Image.asset(
          'assets/images/aquaflow.png',
          width: 47,
          height: 47,
          fit: BoxFit.cover,
        ),
      ),
      title: Text('Drive Wallet '),
      titleTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      subtitle: Text('2.5%', style: TextStyle(color: Colors.green.shade700)),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '1,440,000 DWT',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: Colors.white),
          ),
          Text('~\$62,500', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
