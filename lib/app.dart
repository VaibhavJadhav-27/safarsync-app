import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safarsync_app/routes/app_router.dart';
import 'config/theme.dart';

class SafarSyncApp extends ConsumerWidget {
  const SafarSyncApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouteProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'SafarSync',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
