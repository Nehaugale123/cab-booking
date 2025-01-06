import 'package:flutter/material.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({Key? key}) : super(key: key);

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
              'Payment Done',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            // Subtitle Text
            Text(
              'Payment was successfully',
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

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PaymentDoneScreen(),
  ));
}
