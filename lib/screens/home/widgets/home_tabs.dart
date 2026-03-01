import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safarsync_app/providers/home_tab_provider.dart';

class HomeTabs extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tab = ref.watch(homeTabProvider);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          _TabItem("Upcoming", 0, tab, ref),
          const SizedBox(width: 20),
          _TabItem("Past Trips", 1, tab, ref),
        ],
      ),
    );
  }
}

Widget _TabItem(String title, int index, int current, WidgetRef ref) {
  final isActive = current == index;

  return GestureDetector(
    onTap: () => ref.read(homeTabProvider.notifier).state = index,
    child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.blue : Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        if (isActive) Container(height: 2, width: 40, color: Colors.blue),
      ],
    ),
  );
}
