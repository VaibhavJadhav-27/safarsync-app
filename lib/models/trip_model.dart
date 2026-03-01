class TripModel {
  final String id;
  final String title;
  final String location;
  final String dateRange;
  final String imageUrl;
  final int tasksLeft;

  TripModel({
    required this.id,
    required this.title,
    required this.location,
    required this.dateRange,
    required this.imageUrl,
    required this.tasksLeft,
  });
}
