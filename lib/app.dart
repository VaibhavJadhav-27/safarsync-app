import 'package:flutter/material.dart';
import 'package:safarsync_app/routes/app_router.dart';
import 'config/theme.dart';

class SafarSyncApp extends StatelessWidget {
  const SafarSyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'SafarSync',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
