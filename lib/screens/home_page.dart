import 'package:e_wallet/widgets/crypto_item.dart';
import 'package:e_wallet/widgets/my_chips.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final List<CryptoItem> cryptoItems = List.generate(
    10,
    (index) => CryptoItem(),
  );
  final chips = <MyChips>[
    MyChips(label: "Price Options"),
    MyChips(label: "Wallet Connections"),
    MyChips(label: "Manage Tokens"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //section appbar
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu, color: Colors.white),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
        backgroundColor: Colors.transparent,

        //Contenu de l'appbar
        bottom: PreferredSize(
          preferredSize: Size.square(264),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Main Wallet",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.edit, color: Colors.white),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'YOUR BALANCE',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: Colors.white70),
              ),
              SizedBox(height: 8),
              Text(
                '\$5,194.00',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: Colors.black),
                    label: Text('Send', style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(128, 48),
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
                      minimumSize: Size(128, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 0,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
            ],
          ),
        ),

        //Ajoute l'effet de dégradé et les coins arrondis
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
              ),
            ),
          ),
        ),

        //Ajoute les icônes à droite de l'appbar
        actions: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_important_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 42,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
      //section drawer
      drawer: Drawer(
        backgroundColor: Color(0xFF0F1724),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.transparent),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'john.doe@example.com',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet, color: Colors.white),
              title: Text('Wallets', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Sections des chips
            SizedBox(height: 8),
            SizedBox(
              height: 48,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => chips[index],
                separatorBuilder: (context, index) => SizedBox(width: 8),
                itemCount: chips.length,
              ),
            ),
            SizedBox(height: 16),
            // Section des boutons segmentés
            SegmentedButton(
              showSelectedIcon: false,

              style: ButtonStyle(
                foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                padding: WidgetStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 63, vertical: 16),
                ),
                backgroundColor: WidgetStateProperty.resolveWith<Color?>((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.selected)) {
                    return Colors.cyan;
                  }
                  return const Color.fromARGB(255, 44, 43, 58);
                }),
                side: WidgetStatePropertyAll<BorderSide>(
                  BorderSide(style: BorderStyle.none),
                ),
                shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              segments: [
                ButtonSegment(value: 1, label: Text("Tokens")),
                ButtonSegment(value: 2, label: Text("NFTs")),
              ],
              selected: {1},
              onSelectionChanged: (newSelection) {
                // Handle selection change
              },
            ),
            SizedBox(height: 16),

            // Section de la liste des cryptomonnaies
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) => cryptoItems[index],
                  separatorBuilder: (context, index) => SizedBox(height: 8),
                  itemCount: cryptoItems.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
