import 'package:clotingapp/OnboardingScreen.dart';
import 'package:clotingapp/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/16292986_beautifulwoman_114.svg',height: 200,),
              const SizedBox(height: 20),
              const Text(
                'The Fashion App That\nMakes You Look Your Best',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
          Container(
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffB46465),
                          side: const BorderSide(color: Colors.black12),
                          padding: const EdgeInsets.all(15),fixedSize: const Size(250, 50)
                        ),
              
              onPressed: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>const OnboardingScreen()));
              },
              
               child: const Text("Let's Get Started",style: TextStyle(color: Colors.white),)),
          ),
          const SizedBox(
            height: 20,
          ),
          
          const Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Text('Already have an account?'),
              ],
            ),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
          }, child: const Text('Sign In',style: TextStyle(color:  Color(0xffB46465)),))
                
            ],
            
          ),
        ),
      ),
      
    );
  }
}