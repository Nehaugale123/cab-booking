import 'package:cab_booking_app/widgets/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forget Password',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/error.png', // Replace with your image asset path
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please Enter Your Email Address To Receive a Verification Code',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF002144),
              ),
            ),
            const SizedBox(height: 20),
            OptionTile(
              icon: Icons.email_outlined,
              title: 'Continue Via Email',
              subtitle: 'Your email linked to account',
              borderColor: const Color(0xFF002144),
              textColor: const Color(0xFF002144),
              onTap: () {
                Get.to(() => VerifyEmailScreen());
              },
            ),
            const SizedBox(height: 10),
            OptionTile(
              icon: Icons.phone_outlined,
              title: 'Continue Via Phone',
              subtitle: 'Your phone linked to account',
              borderColor: const Color(0xFF002144),
              textColor: const Color(0xFF002144),
              onTap: () {
                Get.to(() => PhoneVerificationScreen());
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add functionality for "Just Send" button
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF002144),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Just Send',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color borderColor;
  final Color textColor;
  final VoidCallback onTap;

  const OptionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.borderColor,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: Icon(icon, size: 30, color: textColor),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: textColor.withOpacity(0.7)),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: textColor),
        ),
      ),
    );
  }
}

class EmailVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Email Verification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Email Verification Screen',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class PhoneVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phone Verification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Phone Verification Screen',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
