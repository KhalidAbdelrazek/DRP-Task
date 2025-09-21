// features/vehicles/presentation/widgets/vehicle_card.dart
import 'package:flutter/material.dart';
import '../../data/vehicle_model.dart';

class VehicleCard extends StatelessWidget {
  final VehicleModel vehicle;
  final VoidCallback onTap;

  const VehicleCard({super.key, required this.vehicle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(vehicle.name),
        subtitle: Text(vehicle.type),
        trailing: Text(vehicle.status.name.toUpperCase()),
        onTap: onTap,
      ),
    );
  }
}
