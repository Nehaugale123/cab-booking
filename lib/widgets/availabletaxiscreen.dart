import 'package:cab_booking_app/widgets/promocode_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvailableTaxisScreen extends StatelessWidget {
  final List<Map<String, String>> taxis = [
    {"name": "Volkswagen Tiguan", "time": "05 min", "price": "\$20.00", "image": "assets/images/tiguan.png"},
    {"name": "Audi Luxury Sedan", "time": "03 min", "price": "\$10.00", "image": "assets/images/audi.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF002144)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Available Taxis",
              style: TextStyle(color: Color(0xFF002144), fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
            IconButton(
              icon: Icon(Icons.notifications, color: Color(0xFF002144)),
              onPressed: () {
                // Add functionality for the bell icon if needed
              },
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: taxis.length,
              itemBuilder: (context, index) {
                final taxi = taxis[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          // Taxi Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              taxi["image"]!,
                              width: 80,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          // Taxi Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  taxi["name"]!,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  taxi["time"]!,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  taxi["price"]!,
                                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Book Now Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF002144),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                 Get.to(()=>PromoCodeScreen());
                },
                child: Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
