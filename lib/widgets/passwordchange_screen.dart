import 'dart:async';

import 'package:cab_booking_app/widgets/map_screen.dart';
import 'package:flutter/material.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({Key? key}) : super(key: key);

  @override
  State<PasswordChangedScreen> createState() => _PasswordChangedScreenState();
}

class _PasswordChangedScreenState extends State<PasswordChangedScreen> {
 void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Navigate to the next screen after 2 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MapScreen()), // Replace `NextScreen` with your target screen
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular Icon
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue.shade900, // Dark blue background color
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                size: 50,
                color: Colors.white, // White check icon
              ),
            ),
            const SizedBox(height: 20),
            // Title Text
            Text(
              'Password Changed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            // Subtitle Text
            Text(
              'Password change successfully',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


