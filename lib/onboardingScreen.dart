import 'package:clotingapp/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  const SizedBox(height: 20),
                  SvgPicture.asset('assets/onboarding.svg.svg',height: 400,),
                  const SizedBox(height: 20),
                  if (index == 2)
                    ElevatedButton(
                       style: ElevatedButton.styleFrom(
                        backgroundColor:  const Color(0xffB46465),
                        side: const BorderSide(color: Colors.black12),
                        padding: const EdgeInsets.all(15),fixedSize: const Size(200, 50)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInScreen()),
                        );
                      },
                      child: const Text('Next',style: TextStyle(color: Colors.white),),
                    ),
                    Row(
                      children: [IconButton(onPressed: (){},
                       icon: const Icon(Icons.arrow_back,color:  Color(0xffB46465),)),
                      const SizedBox(width: 260),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward,color:  Color(0xffB46465),))
                      
                      
                      ],
                     
              
              
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
