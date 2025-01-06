import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBookingPage(),
    );
  }
}

class MyBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Booking"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Color(0xFF002144),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xFF002144),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            BookingCard(
              name: "Tim Midsayman",
              code: "ABC - 02132",
              pickUp: "2115 Tennessee Avenue",
              dropOff: "2197 Prospect Valley Road",
              price: "\$20.00",
              time: "05 min",
              distance: "2.0 km",
              status: "Active",
              statusColor: Colors.orange,
            ),
            BookingCard(
              name: "Bridget Theriveuai",
              code: "DEF - 13243",
              pickUp: "2115 Tennessee Avenue",
              dropOff: "2197 Prospect Valley Road",
              price: "\$15.00",
              time: "10 min",
              distance: "1.5 km",
              status: "Complete",
              statusColor: Colors.green,
            ),
            BookingCard(
              name: "Wes Yabinlatelee",
              code: "GHI - 23243",
              pickUp: "2115 Tennessee Avenue",
              dropOff: "2197 Prospect Valley Road",
              price: "\$18.00",
              time: "07 min",
              distance: "1.8 km",
              status: "Cancelled",
              statusColor: Colors.red,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  final String name;
  final String code;
  final String pickUp;
  final String dropOff;
  final String price;
  final String time;
  final String distance;
  final String status;
  final Color statusColor;

  BookingCard({
    required this.name,
    required this.code,
    required this.pickUp,
    required this.dropOff,
    required this.price,
    required this.time,
    required this.distance,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/boy.png'), // Add a placeholder image to assets.
                  radius: 20,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      code,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 24),
            Row(
              children: [
                Icon(Icons.circle, size: 12, color: Colors.blue),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    pickUp,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on, size: 12, color: Colors.red),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    dropOff,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Price: $price", style: TextStyle(color: Colors.grey)),
                Text("Time: $time", style: TextStyle(color: Colors.grey)),
                Text("Distance: $distance", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
