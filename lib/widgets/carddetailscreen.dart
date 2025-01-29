import 'package:cab_booking_app/widgets/paymentdone_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(CardDetailsApp());
}

class CardDetailsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardDetailsScreen(),
    );
  }
}

class CardDetailsScreen extends StatefulWidget {
  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002144),
        title: Text(
          "Card Details",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Credit Card Image
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                'assets/images/credit.png', // Replace with your card image
                width: double.infinity,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            // Card Holder Name Field
            TextField(
              decoration: InputDecoration(
                labelText: "Card Holder Name",
                hintText: "Please enter card holder name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Card Number Field
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Card Number",
                hintText: "Please enter your card number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Expiry Date and CVV
            Row(
              children: [
                // Expiry Date Field
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "Expires Date",
                      hintText: "MM / YY",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                // CVV Field
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "CVV",
                      hintText: "123",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            // Confirm Payment Button
            ElevatedButton(
              onPressed: () {
                Get.to(()=>PaymentDoneScreen());
              },
              child: Text("Confirm Payment",style: TextStyle(color: Colors.white),),
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
    );
  }
}
