
import 'package:clotingapp/HomePage.dart';
import 'package:clotingapp/ShippingAddressScreen.dart';

import 'package:flutter/material.dart';


class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class Cart with ChangeNotifier {
  final List<Product> _products = [];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}



class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectedAddress = "Home";
  String shippingType = "Economy";
  DateTime estimatedArrival = DateTime(2023, 8, 25);

  void changeAddress(String newAddress) {
    setState(() {
      selectedAddress = newAddress;
    });
  }

  void changeShippingType(String newType, DateTime newArrival) {
    setState(() {
      shippingType = newType;
      estimatedArrival = newArrival;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        backgroundColor: const Color(0xffB46465),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text("Shipping Address"),
              subtitle: Text(selectedAddress),
              trailing: TextButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShippingAddressScreen()),
                  );
                  if (result != null) {
                    changeAddress(result);
                  }
                },
                child: const Text("CHANGE", style: TextStyle(color: Color(0xffB46465))),
              ),
            ),
            ListTile(
              title: const Text("Choose Shipping Type"),
              subtitle: Text("$shippingType\nEstimated Arrival: ${estimatedArrival.toLocal().toString().split(' ')[0]}"),
              trailing: TextButton(
                onPressed: () {
                  // Logic to change shipping type (can be a popup or another screen)
                  changeShippingType("Express", DateTime(2023, 8, 22));
                },
                child: const Text("CHANGE", style: TextStyle(color: Color(0xffB46465))),
              ),
            ),
            const Divider(),
            const Text("Order List", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.brown[100], child: const Text("B")),
              title: const Text("Brown Jacket"),
              subtitle: const Text("Size: XL"),
              trailing: const Text("\$83.97"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.brown[100], child: const Text("B")),
              title: const Text("Brown Suite"),
              subtitle: const Text("Size: XL"),
              trailing: const Text("\$120.00"),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShippingAddressScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffB46465),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text("Continue to Payment",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
