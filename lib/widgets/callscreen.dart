import 'package:cab_booking_app/widgets/driverfoundscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Caller Information
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centering the image and text
              children: [
                SizedBox(height: 50),
                // CircleAvatar with border
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF002144), width: 4),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      "https://via.placeholder.com/150", // Replace with caller's image
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Tim Midsayman",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "2:00 min", // Call duration
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            // Call Action Buttons
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Mute Button
                  Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          // Mute functionality
                        },
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(Icons.mic_off, color: Colors.black, size: 28),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Mute",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // End Call Button (in the middle)
                  Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                            Get.to(()=>DriverFoundScreen());
                        },
                        backgroundColor: Colors.red,
                        child: Icon(Icons.call_end, color: Colors.white, size: 28),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "End",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // Speaker Button
                  Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          // Speaker functionality
                        },
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(Icons.volume_up, color: Colors.black, size: 28),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Speaker",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
