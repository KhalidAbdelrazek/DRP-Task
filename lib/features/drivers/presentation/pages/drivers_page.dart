// features/drivers/presentation/pages/drivers_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/drivers_provider.dart';
import '../widgets/driver_card.dart';
import 'driver_details_page.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DriversProvider>(
      builder: (_, provider, __) {
        return Scaffold(
          appBar: AppBar(title: const Text("Drivers")),
          body: ListView.builder(
            itemCount: provider.drivers.length,
            itemBuilder: (_, index) {
              final driver = provider.drivers[index];
              return DriverCard(
                driver: driver,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DriverDetailsPage(driverId: driver.id),
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
