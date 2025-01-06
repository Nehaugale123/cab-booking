import 'dart:async';
import 'package:cab_booking_app/widgets/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      // Navigate to the next screen after 2 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()), // Replace `NextScreen` with your target screen
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
            Spacer(),
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 20, 37),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 100,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'CARBOOK',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

// Replace this with your next screen
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to Next Screen!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}
