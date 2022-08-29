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
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Image.asset(
                width: 300,
                "assets/images/discount.png",
              ),
            ),
          ),
          SizedBox(height: 70,),
          Text("You do not have any discounts.",style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}
