import 'package:flutter/material.dart';
class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Account",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture and Info
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'), // Replace with your image
                  ),
                  // Edit Button
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        // Handle Edit Profile Logic
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF002144),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(6),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            // Name
            Text(
              "Hugh Mannerizorsa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 6),
            // Email
            Text(
              "hugh23@gmail.com",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),

            // Options List
            Expanded(
              child: ListView(
                children: [
                  _buildAccountOption(
                    icon: Icons.location_on,
                    title: "Address",
                    onTap: () {},
                  ),
                  _buildAccountOption(
                    icon: Icons.payment,
                    title: "Payment",
                    onTap: () {},
                  ),
                  _buildAccountOption(
                    icon: Icons.notifications,
                    title: "Notification",
                    onTap: () {},
                  ),
                  _buildAccountOption(
                    icon: Icons.info,
                    title: "Information",
                    onTap: () {},
                  ),
                  _buildAccountOption(
                    icon: Icons.lock,
                    title: "Security",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF002144),
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Active tab index
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ],
      ),
    );
  }

  // Widget for Account Options
  Widget _buildAccountOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF002144)),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
