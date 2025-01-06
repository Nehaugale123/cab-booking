import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RideBookingScreen(),
    );
  }
}

class RideBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map background
          Container(
            color: Colors.grey[300], // Replace this with your map widget later
          ),
          // White Card UI
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Pick Up Section
                  Row(
                    children: [
                      Icon(Icons.circle, color: Color(0xFF002144), size: 12),
                      SizedBox(width: 8),
                      Text(
                        "Pick Up",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Current Location",
                    style: TextStyle(
                      color: Color(0xFF002144),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Divider(color: Colors.grey[300]),
                  SizedBox(height: 16),
                  // Drop Off Section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin, color: Colors.red, size: 12),
                      SizedBox(width: 8),
                      Text(
                        "Pick Off",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.swap_vert, color: Colors.grey, size: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Choose Destination",
                    style: TextStyle(
                      color: Color(0xFF002144),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Divider(color: Colors.grey[300]),
                  SizedBox(height: 8),
                  // History Section
                  Text(
                    "History",
                    style: TextStyle(
                      color: Color(0xFF002144),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // History List
                  Column(
                    children: [
                      HistoryTile(address: "2197 Prospect Valley Road"),
                      HistoryTile(address: "540 Timberbrook Lane"),
                      HistoryTile(address: "2115 Tennessee Avenue"),
                      HistoryTile(address: "1057 Winifred Way"),
                      HistoryTile(address: "3268 Parrish Avenue"),
                      HistoryTile(address: "1928 Kincheloe Road"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Back Button with proper alignment
          Positioned(
            top: 10, // Adjusted to ensure perfect vertical alignment
            left: 16,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF002144)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF002144),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ""),
        ],
      ),
    );
  }
}

// Reusable History Tile Widget
class HistoryTile extends StatelessWidget {
  final String address;

  HistoryTile({required this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.location_on, color: Color(0xFF002144), size: 20),
          SizedBox(width: 8),
          Text(
            address,
            style: TextStyle(
              color: Color(0xFF002144),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
