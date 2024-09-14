import 'package:clotingapp/HomePage.dart';

import 'package:clotingapp/NewPasswordScreen.dart';
import 'package:clotingapp/SignUpScreen.dart';
import 'package:flutter/material.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
    bool _ispasswordVisible = false;
     bool savepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              const Center(child: Text("Sign In",style: TextStyle(fontSize: 50),)),
              const Text("Hi! Welcome back, you've been missed"),
              const SizedBox(
                height: 110,
              ),
                         const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    
                    child: Column(
                      children: [
                        TextField(
                          
                          decoration: InputDecoration(
                            labelText:'Email',labelStyle: TextStyle(color: Colors.black) ,
                            
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                              
                            ),
                            
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                              
                            ),
                        
                            fillColor: Colors.white,
                            filled: true,
                          
                          ),
                        
                        ),
                      ],
                    ),
                    
                    
                  ),
              const SizedBox(height: 16),
             Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                     
                      obscureText:!_ispasswordVisible ,
                      decoration: InputDecoration(
                        
                         labelText:'Password',labelStyle: const TextStyle(color: Colors.black) ,
                       
                        
                        
                         suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _ispasswordVisible = !_ispasswordVisible;
                        });
                      },
                      icon: Icon(
                        _ispasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,),
                      ),
                      
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                          ),
                      
                          fillColor: Colors.white,
                          filled: true,
                        
          
          
                        ),
                        
                         
                        
                        ),
                        
                   ), 
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: CheckboxListTile(
                           title: Text("Save Password",style: TextStyle(fontSize: 15,color: Colors.blue[900]),),
                           value: savepassword,
                           onChanged: (newValue) {
                            setState(() {
                             savepassword = newValue!;
                                             });
                                      },
                                    ),
                      ),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewPasswordScreen()),
                                        );
                                      },
                                      child: const Text('Forgot Password?',
                                      style: TextStyle(color:  Color(0xffB46465)),),
                                    ),
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
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: const Text('Sign In',
                style: TextStyle(color:
                 Colors.white),),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                },
                child: const Text('Create Account',
                style: TextStyle(color:  Color(0xffB46465)),),
              ),
              const Text('-----------------Or sign in with-----------------'),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/social_12942302.png',height: 40,),
                    
                    Image.asset('assets/new_10829197.png',height: 40,),
                    
                    Image.asset('assets/facebook_889100.png',height: 40,),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
