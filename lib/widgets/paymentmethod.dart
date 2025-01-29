import 'package:cab_booking_app/widgets/carddetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(PaymentMethodApp());
}

class PaymentMethodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentMethodScreen(),
    );
  }
}

class PaymentMethodScreen extends StatefulWidget {
  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002144),
        title: Text(
          "Payment Method",
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
            Expanded(
              child: Card(
                child: ListView(
                  children: [
                    paymentOptionTile(
                      "Debit/credit card",
                      "assets/images/debit.png",
                      "card",
                    ),
                    paymentOptionTile(
                      "Paypal",
                      "assets/images/paypal.png",
                      "paypal",
                    ),
                    paymentOptionTile(
                      "Amazon Pay",
                      "assets/images/amazon.jpg",
                      "amazon",
                    ),
                    paymentOptionTile(
                      "Cash On Delivery",
                      "assets/images/payment.png",
                      "cash",
                    ),
                    paymentOptionTile(
                      "Google Pay",
                      "assets/images/google.png",
                      "google",
                    ),
                    paymentOptionTile(
                      "Apple Pay",
                      "assets/images/social-media.png",
                      "apple",
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>CardDetailsScreen());
              },
              child: Text("Process Payment",style: TextStyle(color: Colors.white),),
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

  Widget paymentOptionTile(String title, String iconPath, String value) {
    return RadioListTile<String>(
      value: value,
      groupValue: selectedPaymentMethod,
      onChanged: (value) {
        setState(() {
          selectedPaymentMethod = value;
        });
      },
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      secondary: Image.asset(
        iconPath,
        width: 40,
        height: 50,
        fit: BoxFit.contain,
      ),
      activeColor: Color(0xFF002144),
    );
  }
}
