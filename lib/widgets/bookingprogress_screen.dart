import 'package:cab_booking_app/widgets/driverfoundscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'ride_canceled_screen.dart';

class BookingInProgressScreen extends StatefulWidget {
  @override
  _BookingInProgressScreenState createState() =>
      _BookingInProgressScreenState();
}

class _BookingInProgressScreenState extends State<BookingInProgressScreen> {
  @override
  void initState() {
    super.initState();
    // Automatically move to the Driver Found screen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DriverFoundScreen()),
        );
      }
    });
  }

  // void cancelRide() {
  //   // Navigate to the Ride Canceled screen
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => RideCanceledScreen()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map background
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Example location
              zoom: 14.0,
            ),
          ),
          // Bottom container with booking details
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "We Are Trying To Your Booking",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Your Ride Will Start Soon",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    child: Text("Cancel Ride"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
