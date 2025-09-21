// features/vehicles/state/vehicles_provider.dart
import 'package:flutter/material.dart';
import '../data/vehicle_model.dart';

class VehiclesProvider extends ChangeNotifier {
  final List<VehicleModel> _vehicles = [
    VehicleModel(id: "V1", name: "Truck A", type: "Truck"),
    VehicleModel(id: "V2", name: "Van B", type: "Van"),
    VehicleModel(id: "V3", name: "Bike C", type: "Bike"),
  ];

  List<VehicleModel> get vehicles => _vehicles;

  void updateVehicleStatus(String id, VehicleStatus status,
      {String? driver, String? trip}) {
    final vehicle = _vehicles.firstWhere((v) => v.id == id);
    vehicle.status = status;
    vehicle.assignedDriver = driver;
    vehicle.currentTrip = trip;
    notifyListeners();
  }
}
