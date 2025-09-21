import 'package:flutter/material.dart';
import '../../../../core/utils/mock_data.dart';
import '../data/trip_model.dart';

class TripsProvider extends ChangeNotifier {
  final List<TripModel> _trips = mockTrips;
  String _searchQuery = "";
  TripStatus? _filter;

  List<TripModel> get trips {
    return _trips.where((trip) {
      final matchesSearch =
          trip.driver.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          trip.vehicle.toLowerCase().contains(_searchQuery.toLowerCase());
      final matchesFilter = _filter == null || trip.status == _filter;
      return matchesSearch && matchesFilter;
    }).toList();
  }

  void search(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void filterByStatus(TripStatus? status) {
    _filter = status;
    notifyListeners();
  }

  void updateTripStatus(String id, TripStatus newStatus) {
    final trip = _trips.firstWhere((t) => t.id == id);
    trip.status = newStatus;
    notifyListeners();
  }
}
