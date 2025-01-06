import 'package:cab_booking_app/widgets/passwordchange_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Password',
          style: TextStyle(color: Color(0xFF002144), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // backgroundColor: Colors.white,
        // elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF002144)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/employee.png', // Replace with your asset path
                height: 200,
                 color: Color(0xFF002144),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'New Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF002144),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter New Password',
                hintStyle: TextStyle(color: Colors.black26),
                filled: true,
                fillColor: Colors.black.withOpacity(0.05),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF002144),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Confirm Password',
                hintStyle: TextStyle(color: Colors.black26),
                filled: true,
                fillColor: Colors.black.withOpacity(0.05),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>PasswordChangedScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF002144),
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CreateNewPasswordScreen(),
  ));
}
