import 'package:carsbee_app/carservice.dart';
import 'package:carsbee_app/date.dart';
import 'package:carsbee_app/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckoutScreen extends StatelessWidget {
   final CarService carService;
  const CheckoutScreen({required this.carService});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Car Type: ${carService.type}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Price: ${carService.price}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            DatePage(),
            SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>PaymentScreen(),
                ),
              );
            },
            child: Text('Proceed to Payment',),
          ),
          ],
        ),
      ),
    );
  }
}





