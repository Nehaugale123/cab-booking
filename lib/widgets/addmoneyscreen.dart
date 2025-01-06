import 'package:flutter/material.dart';

void main() {
  runApp(AddMoneyApp());
}

class AddMoneyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddMoneyScreen(),
    );
  }
}

class AddMoneyScreen extends StatefulWidget {
  @override
  _AddMoneyScreenState createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  double amount = 200.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Add Money",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            // Enter Amount Section
            Text(
              "Enter The Amount Need Add",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8), // Reduced spacing
            // Amount Display
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "\$${amount.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12), // Reduced spacing
            // Quick Add Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildQuickAddButton("+\$2,000", 2000),
                _buildQuickAddButton("+\$3,000", 3000),
                _buildQuickAddButton("+\$4,000", 4000),
              ],
            ),
            SizedBox(height: 16), // Reduced spacing
            // Continue Button
            ElevatedButton(
              onPressed: () {
                // Handle Continue Logic
              },
              child: Text("Continue",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF002144),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
             Spacer(),
            // Numeric Keypad
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 20, // Reduced spacing
                    crossAxisSpacing: 20, // Reduced spacing
                  ),
                  itemBuilder: (context, index) {
                    if (index == 9) return SizedBox.shrink(); // Empty Cell
                    if (index == 11) {
                      return IconButton(
                        icon: Icon(Icons.backspace_outlined, color: Colors.black),
                        onPressed: () {
                          setState(() {
                            if (amount != 0.0) {
                              String currentAmount =
                                  amount.toStringAsFixed(2).replaceAll('.', '');
                              if (currentAmount.isNotEmpty) {
                                currentAmount =
                                    currentAmount.substring(0, currentAmount.length - 1);
                                amount = currentAmount.isEmpty
                                    ? 0.0
                                    : double.parse(currentAmount) / 100;
                              }
                            }
                          });
                        },
                      );
                    }
                    String number =
                        index == 10 ? "0" : (index + 1).toString(); // Number Key
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          String currentAmount =
                              amount.toStringAsFixed(2).replaceAll('.', '');
                          currentAmount += number;
                          amount = double.parse(currentAmount) / 100;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          number,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Quick Add Button Widget
  Widget _buildQuickAddButton(String label, double value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          amount += value;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjusted padding
        decoration: BoxDecoration(
          color: Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
