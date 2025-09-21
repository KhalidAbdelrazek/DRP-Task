// features/drivers/presentation/widgets/driver_card.dart
import 'package:flutter/material.dart';
import '../../data/driver_model.dart';

class DriverCard extends StatelessWidget {
  final DriverModel driver;
  final VoidCallback onTap;

  const DriverCard({super.key, required this.driver, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(driver.name),
        subtitle: Text("License: ${driver.licenseNumber}"),
        trailing: Text(driver.status.name.toUpperCase()),
        onTap: onTap,
      ),
    );
  }
}
