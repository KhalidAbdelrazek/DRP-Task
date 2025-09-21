import '../../features/trips/data/trip_model.dart';

List<TripModel> mockTrips = [
  TripModel(
    id: "T001",
    driver: "Ahmed Ali",
    vehicle: "Truck A",
    pickup: "Cairo",
    dropoff: "Alexandria",
    status: TripStatus.pending,
  ),
  TripModel(
    id: "T002",
    driver: "Mona Hassan",
    vehicle: "Van B",
    pickup: "Giza",
    dropoff: "Mansoura",
    status: TripStatus.inProgress,
  ),
  TripModel(
    id: "T003",
    driver: "Omar Khaled",
    vehicle: "Bike C",
    pickup: "Helwan",
    dropoff: "October",
    status: TripStatus.completed,
  ),
];
