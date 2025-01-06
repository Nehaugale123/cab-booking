import 'package:flutter/material.dart';


class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "2197 Prospect Valley Road",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          // Map Background
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/map.png', // Replace with your map image
              fit: BoxFit.cover,
            ),
          ),
          // Route and Cars Layer (Dummy for UI)
          Positioned(
            top: 150,
            left: 50,
            child: Column(
              children: [
                Icon(Icons.location_pin, color: Colors.red, size: 40),
                Container(
                  width: 2,
                  height: 100,
                  color: Colors.black,
                ),
                Icon(Icons.circle, color: Colors.blue, size: 16),
              ],
            ),
          ),
          // Booking Status Card
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    color: Color(0xFF002144),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "We Are Trying To Your Booking",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Your Ride Will Start Soon",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Cancel Booking
                    },
                    child: Text("Cancel Booking"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF002144),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
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
