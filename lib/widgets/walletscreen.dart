import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text("My Wallet"),
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Active Total Balance Section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Active Total Balance",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\$3,298.00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.add,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Payment History Header
            const Text(
              "Payment History",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Payment History List
            Expanded(
              child: ListView(
                children: [
                  paymentHistoryTile(
                    "Tim Midsayman",
                    "ABC - 02132",
                    "\$20.00",
                    "https://via.placeholder.com/150",
                  ),
                  paymentHistoryTile(
                    "Bridget Theriveuai",
                    "DEF - 13243",
                    "\$30.00",
                    "https://via.placeholder.com/150",
                  ),
                  paymentHistoryTile(
                    "Wes Yabinlatelee",
                    "GHI - 23243",
                    "\$40.00",
                    "https://via.placeholder.com/150",
                  ),
                  paymentHistoryTile(
                    "Dee Mandiboss",
                    "JKL - 34353",
                    "\$50.00",
                    "https://via.placeholder.com/150",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget paymentHistoryTile(
      String name, String id, String amount, String imageUrl) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        id,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
      ),
      trailing: Text(
        amount,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
