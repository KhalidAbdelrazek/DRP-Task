import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/trips_provider.dart';
import '../widgets/trip_card.dart';
import '../widgets/search_filter_bar.dart';
import 'trip_details_page.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Trips")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SearchFilterBar(),
            const SizedBox(height: 12),
            Expanded(
              child: Consumer<TripsProvider>(
                builder: (_, provider, __) {
                  if (provider.trips.isEmpty) {
                    return const Center(child: Text("No trips found"));
                  }
                  return ListView.builder(
                    itemCount: provider.trips.length,
                    itemBuilder: (_, index) {
                      final trip = provider.trips[index];
                      return TripCard(
                        trip: trip,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TripDetailsPage(trip: trip),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
