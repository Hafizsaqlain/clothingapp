// shipping_address.dart
import 'package:clotingapp/ShippingOptions.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShippingAddressScreenState createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  String selectedAddress = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shipping Address"),
        backgroundColor: const Color(0xffB46465),
      ),
      body: Column(
        children: [
          RadioListTile(
            value: "Home",
            groupValue: selectedAddress,
            onChanged: (value) {
              setState(() {
                selectedAddress = value!;
              });
            },
            title: const Text("Home"),
            subtitle: const Text("DHA phase-2 "),
          ),
          RadioListTile(
            value: "Office",
            groupValue: selectedAddress,
            onChanged: (value) {
              setState(() {
                selectedAddress = value!;
              });
            },
            title: const Text("Office"),
            subtitle: const Text("E-123 east harm, london"),
          ),
          RadioListTile(
            value: "Parent's House",
            groupValue: selectedAddress,
            onChanged: (value) {
              setState(() {
                selectedAddress = value!;
              });
            },
            title: const Text("Parent's House"),
            subtitle: const Text("H-24353 MA jinnah road"),
          ),
          RadioListTile(
            value: "Friend's House",
            groupValue: selectedAddress,
            onChanged: (value) {
              setState(() {
                selectedAddress = value!;
              });
            },
            title: const Text("Friend's House"),
            subtitle: const Text("H-67 Baldia Town"),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShippingOptions()));
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffB46465),
              ),
              child: const Text("Apply",style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

