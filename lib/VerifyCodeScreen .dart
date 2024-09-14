import 'package:clotingapp/NewPasswordScreen.dart';
import 'package:flutter/material.dart';

class VerifyCodeScreen extends StatelessWidget {
   const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding:  const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              const SizedBox(
                height: 150,
              ),
               const Center(child: Text("Verify Code",style: TextStyle(fontSize: 40),)),
                  const SizedBox(height: 20,),
               const Text('Enter the verification code sent to your email'),
              const SizedBox(height: 16),
               const TextField(
                decoration: InputDecoration(labelText: 'Verification Code'),
              ),
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
                    MaterialPageRoute(builder: (context) => const  NewPasswordScreen()),
                  );
                },
                child: const Text('Verify',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}