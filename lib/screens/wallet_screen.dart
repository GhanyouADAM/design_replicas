import 'package:e_wallet/widgets/crypto_item.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(height: 78, 'assets/images/aquaflow.png'),

                  Container(
                    width: 211,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        bottomLeft: Radius.circular(48),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.cyan, Colors.blueAccent],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 44, 43, 58),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(48),
                            bottomLeft: Radius.circular(48),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16, top: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$0.000674',
                                style: TextStyle(color: Colors.white),
                              ),
                              // SizedBox(height: 8),
                              Text(
                                '+7.68%',
                                style: TextStyle(color: Colors.green.shade700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            ),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 34, 8, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'DIWE WALLET TOKEN',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(color: Colors.white70),
              ),
              SizedBox(height: 28),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '144,000,000',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall!.copyWith(color: Colors.white),
                    ),

                    TextSpan(
                      text: ".352",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall!.copyWith(color: Colors.grey),
                    ),
                    TextSpan(text: '   '),
                    TextSpan(
                      text: "DWT",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall!.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: Colors.black),
                    label: Text('Send', style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(174, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 0,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.call_received, color: Colors.black),
                    label: Text(
                      'Receive',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withValues(alpha: 0.7),
                      minimumSize: Size(174, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    height: 87,
                    width: 178,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(255, 44, 43, 58),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Token', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    height: 87,
                    width: 178,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(255, 44, 43, 58),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Swap', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              ListTile(
                tileColor: const Color.fromARGB(255, 25, 24, 31),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Text('10', style: TextStyle(color: Colors.black)),
                ),
                title: Text(
                  'RECENT TRANSACTIONS',
                  style: TextStyle(color: Colors.white70),
                ),

                trailing: Icon(Icons.menu, color: Colors.white70),
              ),
              SizedBox(height: 8),
              CryptoItem(),
              SizedBox(height: 8),
              CryptoItem(),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
