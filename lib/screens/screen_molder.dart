import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ScreenMolder extends StatelessWidget {
  const ScreenMolder({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Permet au contenu de se prolonger sous la nav bar flottante
      extendBody: true,

      // On superpose la navigation (floating) au-dessus de navigationShell via un Stack
      body: Stack(
        children: [
          // Le contenu principal
          Positioned.fill(child: navigationShell),

          // Barre de navigation "flottante"
          Positioned(
            left: 16,
            right: 16,
            //Ajuste la position verticale selon le besoin
            bottom: 13,
            child: SafeArea(
              top: false,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 18,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),

                child: GNav(
                  gap: 8,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  // important : laisser le background transparent pour que le Container parent soit visible
                  backgroundColor: Colors.transparent,
                  // couleur des icônes non actives
                  color: Colors.grey[600],
                  // couleur de l'icône active
                  activeColor: Colors.cyan,
                  // couleur du fond du tab actif (un léger overlay)
                  tabBackgroundColor: Colors.cyan.withValues(alpha: 0.1),
                  // on lie à la navigationShell pour garder le même état
                  selectedIndex: navigationShell.currentIndex,
                  onTabChange: (index) {
                    navigationShell.goBranch(
                      index,
                      initialLocation: index == navigationShell.currentIndex,
                    );
                  },
                  tabs: const [
                    GButton(icon: Icons.home, text: 'Home'),
                    GButton(icon: Icons.account_balance_wallet, text: 'Wallet'),

                    GButton(icon: Icons.settings, text: 'Settings'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
