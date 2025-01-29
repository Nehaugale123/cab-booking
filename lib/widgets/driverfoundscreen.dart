import 'package:cab_booking_app/widgets/callscreen.dart';
import 'package:cab_booking_app/widgets/cancel_ride_screen.dart';
import 'package:cab_booking_app/widgets/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(DriverFoundApp());
}

class DriverFoundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DriverFoundScreen(),
    );
  }
}

class DriverFoundScreen extends StatefulWidget {
  @override
  _DriverFoundScreenState createState() => _DriverFoundScreenState();
}

class _DriverFoundScreenState extends State<DriverFoundScreen> {
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
          // Driver Found Card
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
                  Text(
                    "Yeah! We Found A Driver",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      // Driver Image
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/driver.png'), // Replace with your driver image
                      ),
                      SizedBox(width: 16),
                      // Driver Details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tim Midsayman",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "ABC - 02132",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Call Button
                      IconButton(
                        onPressed: () {
                          Get.to(()=>CallScreen());
                        },
                        icon: Icon(Icons.call, color: Color(0xFF002144)),
                      ),
                      // Message Button
                      IconButton(
                        onPressed: () {
                          Get.to(()=>ChatScreen());
                        },
                        icon: Icon(Icons.message, color: Color(0xFF002144)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Cancel Ride Button
                  ElevatedButton(
                    onPressed: () {
                      Get.to(()=>CancelRideScreen());
                    },
                    child: Text("Cancel Ride",style: TextStyle(color: Colors.white),),
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
