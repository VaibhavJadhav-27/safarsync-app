import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/trip_model.dart';

final homeTripsProvider = Provider<List<TripModel>>((ref) {
  return [
    TripModel(
      id: "1",
      title: "Goa Vacation",
      location: "India",
      dateRange: "Dec 24 - Jan 2",
      imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
      tasksLeft: 2,
    ),
    TripModel(
      id: "2",
      title: "Manali Trip",
      location: "India",
      dateRange: "Mar 15 - Mar 20",
      imageUrl: "https://images.unsplash.com/photo-1519681393784-d120267933ba",
      tasksLeft: 0,
    ),
  ];
});
