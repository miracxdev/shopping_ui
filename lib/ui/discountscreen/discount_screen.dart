import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Discount"),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset(
                "assets/images/discount.png",
              ),
            ),
          )
        ],
      ),
    );
  }
}
