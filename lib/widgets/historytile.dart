// Reusable History Tile Widget
import 'package:flutter/material.dart';

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
