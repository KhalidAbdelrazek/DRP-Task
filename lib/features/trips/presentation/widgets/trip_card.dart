import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../data/trip_model.dart';

class TripCard extends StatelessWidget {
  final TripModel trip;
  final VoidCallback onTap;

  const TripCard({super.key, required this.trip, required this.onTap});

  String get statusText {
    switch (trip.status) {
      case TripStatus.pending:
        return "Pending";
      case TripStatus.inProgress:
        return "In Progress";
      case TripStatus.completed:
        return "Completed";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Trip ${trip.id}", style: AppTextStyles.cardTitle),
        subtitle: Text(
          "${trip.pickup} → ${trip.dropoff}\nDriver: ${trip.driver}",
        ),
        trailing: Text(statusText),
        onTap: onTap,
      ),
    );
  }
}
