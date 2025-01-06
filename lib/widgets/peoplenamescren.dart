import 'package:flutter/material.dart';
class Riderbook extends StatelessWidget {
  final List<Map<String, dynamic>> bookings = [
    {
      "name": "Tim Midsayman",
      "id": "ABC - 02132",
      "status": "Active",
      "statusColor": Colors.orange,
      "image": "assets/images/user1.jpg", // Replace with your image path
    },
    {
      "name": "Bridget Theriveuai",
      "id": "DEF - 13243",
      "status": "Complete",
      "statusColor": Colors.green,
      "image": "assets/images/user2.jpg",
    },
    {
      "name": "Wes Yabinlatelee",
      "id": "GHI - 23243",
      "status": "Cancelled",
      "statusColor": Colors.red,
      "image": "assets/images/user3.jpg",
    },
    {
      "name": "Doe Mandiboss",
      "id": "JKL - 34353",
      "status": "Complete",
      "statusColor": Colors.green,
      "image": "assets/images/user4.jpg",
    },
    {
      "name": "Ivan Notherdiya",
      "id": "MNO - 45464",
      "status": "Cancelled",
      "statusColor": Colors.red,
      "image": "assets/images/user5.jpg",
    },
    {
      "name": "Annie Versaree",
      "id": "PQR - 56575",
      "status": "Complete",
      "statusColor": Colors.green,
      "image": "assets/images/user6.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "My Booking",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: bookings.length,
          itemBuilder: (context, index) {
            final booking = bookings[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(booking['image']),
                ),
                title: Text(
                  booking['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  booking['id'],
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: booking['statusColor'],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    booking['status'],
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
