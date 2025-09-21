import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'features/trips/state/trips_provider.dart';
import 'features/vehicles/state/vehicles_provider.dart';
import 'features/drivers/state/drivers_provider.dart';

import 'features/trips/presentation/pages/trips_page.dart';
import 'features/vehicles/presentation/pages/vehicles_page.dart';
import 'features/drivers/presentation/pages/drivers_page.dart';

void main() {
  runApp(const LogisticsApp());
}

class LogisticsApp extends StatelessWidget {
  const LogisticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => TripsProvider()),
            ChangeNotifierProvider(create: (_) => VehiclesProvider()),
            ChangeNotifierProvider(create: (_) => DriversProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: const MainNavigation(),
          ),
        );
      },
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    TripsPage(),
    VehiclesPage(),
    DriversPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: "Vehicles",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Drivers"),
        ],
      ),
    );
  }
}
