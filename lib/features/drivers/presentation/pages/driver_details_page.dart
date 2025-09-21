// features/drivers/presentation/pages/driver_details_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/drivers_provider.dart';

class DriverDetailsPage extends StatelessWidget {
  final String driverId;
  const DriverDetailsPage({super.key, required this.driverId});

  @override
  Widget build(BuildContext context) {
    final driver = context
        .read<DriversProvider>()
        .drivers
        .firstWhere((d) => d.id == driverId);

    return Scaffold(
      appBar: AppBar(title: Text(driver.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("License: ${driver.licenseNumber}"),
            Text("Status: ${driver.status.name}"),
            Text("Assigned Vehicle: ${driver.assignedVehicle ?? "None"}"),
            Text("Last Trip: ${driver.lastTrip ?? "None"}"),
          ],
        ),
      ),
    );
  }
}
