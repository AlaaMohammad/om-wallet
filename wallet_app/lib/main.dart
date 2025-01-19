import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/_splash_screen.dart';
import 'package:wallet_app/widgets/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orange Money',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text(
          'Orange Money',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Message
            Text(
              'Good Morning, Ala',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            // Total Balance
            Text(
              'Total Balance: 0.46 JOD',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            // Credit Card Section
            CreditCard(
              cardNumber: "3546 7532 XXXX 9742",
              cardHolder: "ALA",
              cardExpiration: "08/2024",
            ),
            SizedBox(height: 20),
            // Quick Actions Section
            Text(
              'Quick Actions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                ActionButton(
                  icon: Icons.person,
                  label: 'Transfer to Alias',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.account_balance,
                  label: 'Transfer to IBAN',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.add,
                  label: 'Orange Refills',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.receipt,
                  label: 'Pay Bills',
                  onPressed: () {},
                ),

                ActionButton(
                  icon: Icons.shopping_cart,
                  label: 'Online Shopping',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.phone_android,
                  label: 'Top-Up Mobile',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.qr_code,
                  label: 'Scan QR Code',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.history,
                  label: 'Transaction History',
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // Promotion Section
            _buildPromotionSection(),
          ],
        ),
      ),
    );
  }

  // Promotion Section Widget
  Widget _buildPromotionSection() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black, // Black background for the promotion card
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Promotion Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Special Offer!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange, // Orange text for emphasis
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Get 10% cashback on all transactions made today.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70, // Light white text for description
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            // Promotion Image
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                'assets/images/promotion.png', // Replace with your promotion image
                height: 150,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          SizedBox(height: 5),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
