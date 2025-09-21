enum TripStatus { pending, inProgress, completed }

class TripModel {
  final String id;
  final String driver;
  final String vehicle;
  final String pickup;
  final String dropoff;
  TripStatus status;

  TripModel({
    required this.id,
    required this.driver,
    required this.vehicle,
    required this.pickup,
    required this.dropoff,
    required this.status,
  });
}
