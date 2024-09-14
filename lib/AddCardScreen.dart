import 'package:clotingapp/PaymentSuccessScreen%20.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController cardHolderNameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  bool saveCard = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text('Add Card', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xffB46465),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            Card(
              color: Colors.brown[200],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4716 9627 1635 8047',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Card holder name: Esther Howard',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Expiry date: 02/30',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: cardHolderNameController,
              decoration: const InputDecoration(labelText: 'Card Holder Name'),
            ),
            TextField(
              controller: cardNumberController,
              decoration: const InputDecoration(labelText: 'Card Number'),
            ),
            TextField(
              controller: expiryDateController,
              decoration: const InputDecoration(labelText: 'Expiry Date (MM/YY)'),
            ),
            TextField(
              controller: cvvController,
              decoration: const InputDecoration(labelText: 'CVV'),
              obscureText: true,
            ),
            CheckboxListTile(
              title: const Text("Save Card"),
              value: saveCard,
              onChanged: (newValue) {
                setState(() {
                  saveCard = newValue!;
                });
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentSuccessScreen()));
               
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffB46465)),
              child: const Text('Add Card',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
