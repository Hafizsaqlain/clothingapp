import 'package:clotingapp/HomePage.dart';

import 'package:flutter/material.dart';

class ContinueProfileScreen extends StatelessWidget {
  const ContinueProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Continue Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          
            const SizedBox(height: 24),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color(0xffB46465),
                      side: const BorderSide(color: Colors.black12),
                      padding: const EdgeInsets.all(15),fixedSize: const Size(250, 50)
                    ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}
