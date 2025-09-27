import 'package:e_wallet/providers/go_router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(gorRouterProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'E-Wallet App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: router,
    );
  }
}
