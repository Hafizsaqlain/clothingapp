import 'package:clotingapp/PaymentMethods.dart';
import 'package:flutter/material.dart';

class ShippingOptions extends StatefulWidget {
  const ShippingOptions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShippingOptionsState createState() => _ShippingOptionsState();
}

class _ShippingOptionsState extends State<ShippingOptions> {
  String? selectedOption = 'Economy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text('Choose Shipping', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xffB46465),
        elevation: 0,
      ),
      body: Column(
        children: [
          RadioListTile<String>(
            title: const Text('Economy'),
            subtitle: const Text('Estimated Arrival 25 August 2023'),
            value: 'Economy',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Regular'),
            subtitle: const Text('Estimated Arrival 24 August 2023'),
            value: 'Regular',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Cargo'),
            subtitle: const Text('Estimated Arrival 22 August 2023'),
            value: 'Cargo',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Friend\'s House'),
            subtitle: const Text('House-23 Baldia Town'),
            value: 'FriendsHouse',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentMethods()));
               
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffB46465),
              ),
              child: const Text('Apply',style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}

