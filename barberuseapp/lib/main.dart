import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/salon_details_screen.dart';
import 'screens/booking_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Initial route is the Home Screen
      routes: {
        '/salon-details': (context) => SalonDetailsScreen(),
        '/booking': (context) => BookingScreen(),
      },
    );
  }
}


/*
Color pallets for the app

main color: #363020
secondary color: #605C4E
Third color: #A49966
fourth color: #C7C7A6

*/