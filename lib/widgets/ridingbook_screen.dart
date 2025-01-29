import 'package:cab_booking_app/widgets/historytile.dart';
import 'package:cab_booking_app/widgets/setdestination_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class RideBookingScreen extends StatefulWidget {
  @override
  _RideBookingScreenState createState() => _RideBookingScreenState();
}

class _RideBookingScreenState extends State<RideBookingScreen> {
  final MapController _mapController = MapController();
  List<Marker> _markers = [];
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();
  int _currentIndex = 0;

  void _onMapTap(TapPosition tapPosition, LatLng point) {
    setState(() {
      _markers.add(
        Marker(
          width: 80.0,
          height: 80.0,
          point: point,
          child: Icon(
            Icons.location_on,
            color: Colors.red,
            size: 40,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map Widget
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: LatLng(18.559004, 73.786766),
              initialZoom: 13.0,
              onTap: _onMapTap,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.map_sample',
              ),
              MarkerLayer(
                markers: _markers,
              ),
            ],
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
                  GestureDetector(
                    onTap: () {
                      // Navigate to SetDestinationPage when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SetDestinationScreen(),
                        ),
                      );
                    },
                    child: Row(
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
    );
  }
}
