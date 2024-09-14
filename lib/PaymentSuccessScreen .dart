import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text('Payment', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xffB46465),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Color(0xffB46465),
              size: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Payment Successful!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Thank you for your purchase.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffB46465)),
              child: const Text('View Order',style: TextStyle(color: Colors.white),),
            ),
            TextButton(
              onPressed: () {
               
              },
              child: const Text('View E-Receipt', style: TextStyle(color: Color(0xffB46465))),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
