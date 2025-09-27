import 'package:e_wallet/screens/home_page.dart';
import 'package:e_wallet/screens/screen_molder.dart';
import 'package:e_wallet/screens/settings_screen.dart';
import 'package:e_wallet/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
final GlobalKey<NavigatorState> _shellNavigatorWalletKey =
    GlobalKey<NavigatorState>(debugLabel: "wallet");
final GlobalKey<NavigatorState> _shellNavigatorSettingsKey =
    GlobalKey<NavigatorState>(debugLabel: "settings");
final GlobalKey<NavigatorState> _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: "home");

final gorRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/', // reste '/', mais maintenant c'est géré par le shell
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            ScreenMolder(navigationShell: navigationShell),
        branches: [
          // Home branch
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(path: '/', builder: (context, state) => HomePage()),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorWalletKey,
            routes: [
              GoRoute(
                path: '/wallet',
                builder: (context, state) => WalletScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSettingsKey,
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
