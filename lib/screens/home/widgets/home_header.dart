import 'package:flutter/material.dart';
import 'package:safarsync_app/config/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Vaibhav 👋", style: AppTextStyles.heading),
              const SizedBox(height: 4),
              Text(
                "Ready for your next adventure?",
                style: AppTextStyles.subtitle,
              ),
            ],
          ),
          const CircleAvatar(radius: 18),
        ],
      ),
    );
  }
}
