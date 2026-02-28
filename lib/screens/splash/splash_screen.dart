import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safarsync_app/config/route_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SafarSync",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () => context.go(RouteNames.home),
              child: const Text("Go to Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
