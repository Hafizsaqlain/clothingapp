import 'package:clotingapp/AddCardScreen.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
   String? selectedOption = 'Paypal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text('Payment Methods', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xffB46465),
        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Credit & Debit Card'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Paypal'),
            leading: const Icon(Icons.paypal),
            trailing: Radio(
               value: 'Paypal',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
            ),
          ),
          ListTile(
            title: const Text('Apple Pay'),
            leading: const Icon(Icons.apple),
            trailing: Radio(
               value: 'Apple Pay',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
            ),
          ),
          ListTile(
            title: const Text('Google Pay'),
            leading: const Icon(Icons.g_mobiledata),
            trailing: Radio(
               value: 'Google Pay',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCardScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffB46465),
              ),
              child: const Text('Confirm Payment',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

