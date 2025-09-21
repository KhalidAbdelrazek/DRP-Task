// features/vehicles/presentation/pages/vehicles_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/vehicles_provider.dart';
import '../widgets/vehicle_card.dart';
import 'vehicle_details_page.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VehiclesProvider>(
      builder: (_, provider, __) {
        return Scaffold(
          appBar: AppBar(title: const Text("Vehicles")),
          body: ListView.builder(
            itemCount: provider.vehicles.length,
            itemBuilder: (_, index) {
              final vehicle = provider.vehicles[index];
              return VehicleCard(
                vehicle: vehicle,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VehicleDetailsPage(vehicleId: vehicle.id),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
