// features/drivers/state/drivers_provider.dart
import 'package:flutter/material.dart';
import '../data/driver_model.dart';

class DriversProvider extends ChangeNotifier {
  final List<DriverModel> _drivers = [
    DriverModel(id: "D1", name: "Ahmed Ali", licenseNumber: "12345"),
    DriverModel(id: "D2", name: "Omar Samir", licenseNumber: "67890"),
    DriverModel(id: "D3", name: "Sara Mohamed", licenseNumber: "54321"),
  ];

  List<DriverModel> get drivers => _drivers;

  void updateDriverStatus(String id, DriverStatus status,
      {String? vehicle, String? trip}) {
    final driver = _drivers.firstWhere((d) => d.id == id);
    driver.status = status;
    driver.assignedVehicle = vehicle;
    driver.lastTrip = trip;
    notifyListeners();
  }
}
