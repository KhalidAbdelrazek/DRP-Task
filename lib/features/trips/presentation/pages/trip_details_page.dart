import 'package:flutter/material.dart';
import '../../data/trip_model.dart';
import '../../state/trips_provider.dart';
import 'package:provider/provider.dart';

class TripDetailsPage extends StatelessWidget {
  final TripModel trip;

  const TripDetailsPage({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TripsProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Trip ${trip.id}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Driver: ${trip.driver}"),
            Text("Vehicle: ${trip.vehicle}"),
            Text("Pickup: ${trip.pickup}"),
            Text("Drop-off: ${trip.dropoff}"),
            const SizedBox(height: 20),
            DropdownButton<TripStatus>(
              value: trip.status,
              items: const [
                DropdownMenuItem(
                  value: TripStatus.pending,
                  child: Text("Pending"),
                ),
                DropdownMenuItem(
                  value: TripStatus.inProgress,
                  child: Text("In Progress"),
                ),
                DropdownMenuItem(
                  value: TripStatus.completed,
                  child: Text("Completed"),
                ),
              ],
              onChanged: (status) {
                if (status != null) {
                  provider.updateTripStatus(trip.id, status);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
