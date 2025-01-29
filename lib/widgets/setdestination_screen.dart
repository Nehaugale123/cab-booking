import 'package:cab_booking_app/widgets/destinationscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SetDestinationScreen(),
    );
  }
}

class SetDestinationScreen extends StatefulWidget {
  @override
  _SetDestinationScreenState createState() => _SetDestinationScreenState();
}

class _SetDestinationScreenState extends State<SetDestinationScreen> {
  final MapController _mapController = MapController();
  List<Marker> _markers = [];

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
              initialCenter: LatLng(18.559004, 73.786766), // Set your initial location
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
          // Top bar with address and back/close buttons
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xFF002144)),
                    onPressed: () {
                      // Handle back button
                    },
                  ),
                  Expanded(
                    child: Text(
                      "2197 Prospect Valley Road",
                      style: TextStyle(
                        color: Color(0xFF002144),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Color(0xFF002144)),
                    onPressed: () {
                      // Handle close button
                    },
                  ),
                ],
              ),
            ),
          ),
          // Marker and Set Destination button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle Set Destination action
                        Get.to(() => Destinationscreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF002144),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Set Destination",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
