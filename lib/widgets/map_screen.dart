import 'package:cab_booking_app/widgets/HomeScreen.dart';
import 'package:cab_booking_app/widgets/bookingscreen.dart';
import 'package:cab_booking_app/widgets/myaccountscreen.dart';
import 'package:cab_booking_app/widgets/ridingbook_screen.dart';
import 'package:flutter/material.dart';
// Import MyAccountScreen

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int _currentIndex = 0;

  // List of screens for bottom navigation
  final List<Widget> _pages = [
    MapScreen (),
    RideBookingScreen(),
    BookingScreen(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the current screen
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xFF002144),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, "Home", 0),
              _buildNavItem(Icons.directions_car, "Rides", 1),
              _buildNavItem(Icons.book, "Bookings", 2),
              _buildNavItem(Icons.person, "Profile", 3),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build navigation items
  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex == index ? Colors.white : Color(0xFF002144),
            ),
            child: Icon(
              icon,
              color: _currentIndex == index ? Color(0xFF002144) : Colors.white,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
