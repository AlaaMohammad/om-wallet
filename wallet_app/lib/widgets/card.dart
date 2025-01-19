import 'dart:ui';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String cardExpiration;

  const CreditCard({
    Key? key,
    required this.cardNumber,
    required this.cardHolder,
    required this.cardExpiration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.black, // Black base color
        ),
        child: Stack(
          children: [
            // Glass Effect
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Blur effect
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black.withOpacity(0.5), // Frosted black overlay
                  ),
                ),
              ),
            ),
            // Card Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Logos Block
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/orange_money_logo.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        "assets/images/contact_less.png",
                        height: 40,
                        width: 40,
                        color: Colors.white, // Ensure logo blends with glass effect

                      ),
                    ],
                  ),
                  // Card Number
                  Text(
                    cardNumber,
                    style: TextStyle(
                      color: Colors.orange, // Orange for high visibility
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  // Card Details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildDetailsBlock(
                        label: 'CARDHOLDER',
                        value: cardHolder,
                      ),
                      _buildDetailsBlock(
                        label: 'VALID THRU',
                        value: cardExpiration,
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

  // Card Details Block
  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            color: Colors.grey, // Subtle label color
            fontSize: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white, // White for contrast
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
