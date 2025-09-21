import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/trips_provider.dart';
import '../../data/trip_model.dart';

class SearchFilterBar extends StatelessWidget {
  const SearchFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TripsProvider>(context, listen: false);

    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(
              hintText: "Search by driver or vehicle",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              isDense: true,
            ),
            onChanged: provider.search,
          ),
        ),
        const SizedBox(width: 8),
        DropdownButton<TripStatus?>(
          hint: const Text("Filter"),
          onChanged: provider.filterByStatus,
          items: [
            const DropdownMenuItem(value: null, child: Text("All")),
            const DropdownMenuItem(
              value: TripStatus.pending,
              child: Text("Pending"),
            ),
            const DropdownMenuItem(
              value: TripStatus.inProgress,
              child: Text("In Progress"),
            ),
            const DropdownMenuItem(
              value: TripStatus.completed,
              child: Text("Completed"),
            ),
          ],
        ),
      ],
    );
  }
}
