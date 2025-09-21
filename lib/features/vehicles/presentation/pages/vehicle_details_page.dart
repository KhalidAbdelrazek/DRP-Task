// features/vehicles/presentation/pages/vehicle_details_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/vehicles_provider.dart';

class VehicleDetailsPage extends StatelessWidget {
  final String vehicleId;
  const VehicleDetailsPage({super.key, required this.vehicleId});

  @override
  Widget build(BuildContext context) {
    final vehicle = context.read<VehiclesProvider>().vehicles.firstWhere(
      (v) => v.id == vehicleId,
    );

    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text("Type: ${vehicle.type}"),
            Text("Status: ${vehicle.status.name}"),
            Text("Driver: ${vehicle.assignedDriver ?? "None"}"),
            Text("Current Trip: ${vehicle.currentTrip ?? "None"}"),
          ],
        ),
      ),
    );
  }
}
