import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safarsync_app/screens/home/widgets/home_search_bar.dart';
import 'package:safarsync_app/screens/home/widgets/home_tabs.dart';
import 'package:safarsync_app/screens/home/widgets/join_create_section.dart';

import '../../providers/home_trips_provider.dart';
import 'widgets/home_header.dart';
import 'widgets/trip_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trips = ref.watch(homeTripsProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      body: SafeArea(
        child: ListView(
          children: [
            HomeHeader(),
            HomeSearchBar(),
            HomeTabs(),
            JoinCreateSection(),
            // const InviteCard(),
            // const YourPlansHeader(),
            const SizedBox(height: 10),

            ...trips.map((trip) => TripCard(trip: trip)),

            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
