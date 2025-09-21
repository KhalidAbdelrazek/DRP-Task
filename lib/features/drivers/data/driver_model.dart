// features/drivers/data/driver_model.dart
enum DriverStatus { available, onTrip }

class DriverModel {
  final String id;
  final String name;
  final String licenseNumber;
  DriverStatus status;
  String? assignedVehicle;
  String? lastTrip;

  DriverModel({
    required this.id,
    required this.name,
    required this.licenseNumber,
    this.status = DriverStatus.available,
    this.assignedVehicle,
    this.lastTrip,
  });
}
