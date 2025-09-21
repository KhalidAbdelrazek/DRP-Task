// features/vehicles/data/vehicle_model.dart
enum VehicleStatus { available, assigned }

class VehicleModel {
  final String id;
  final String name;
  final String type;
  VehicleStatus status;
  String? assignedDriver;
  String? currentTrip;

  VehicleModel({
    required this.id,
    required this.name,
    required this.type,
    this.status = VehicleStatus.available,
    this.assignedDriver,
    this.currentTrip,
  });
}
