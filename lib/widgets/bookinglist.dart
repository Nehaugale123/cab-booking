import 'package:flutter/material.dart';

class BookingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002144),
        title: Text(
          "My Booking",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [
          BookingTile(
            name: "Tim Midsayman",
            status: "Active",
            pickUp: "2115 Tennessee Avenue",
            dropOff: "2197 Prospect Valley Road",
            price: "\$20.00",
            time: "05 min",
            distance: "2.0 km",
            profileImage: "https://via.placeholder.com/150", // Placeholder
          ),
          BookingTile(
            name: "Bridget Therievoai",
            status: "Completed",
            pickUp: "XYZ Address",
            dropOff: "ABC Address",
            price: "\$15.00",
            time: "10 min",
            distance: "3.5 km",
            profileImage: "https://via.placeholder.com/150", // Placeholder
          ),
        ],
      ),
    );
  }
}

class BookingTile extends StatelessWidget {
  final String name, status, pickUp, dropOff, price, time, distance, profileImage;

  const BookingTile({
    required this.name,
    required this.status,
    required this.pickUp,
    required this.dropOff,
    required this.price,
    required this.time,
    required this.distance,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/boy.png'),
            ),
            SizedBox(width: 12),
            // Booking Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name and Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Chip(
                        label: Text(
                          status,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor:
                            status == "Active" ? Colors.orange : Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Pickup and Drop-Off
                  Row(
                    children: [
                      Icon(Icons.my_location, color: Colors.blue, size: 16),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          "Pick Up: $pickUp",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          "Drop Off: $dropOff",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Price, Time, and Distance
                  Row(
                    children: [
                      Icon(Icons.monetization_on, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.timer, color: Colors.blue, size: 16),
                      SizedBox(width: 4),
                      Text(
                        time,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.directions_walk, color: Colors.grey, size: 16),
                      SizedBox(width: 4),
                      Text(
                        distance,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
