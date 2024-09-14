import 'package:clotingapp/VerifyCodeScreen%20.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _ispasswordVisible = false;
  final _formKey = GlobalKey<FormState>();

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
                  height: 100,
                ),
                const Center(child: Text("Create Account",style: TextStyle(fontSize: 40),)),
                const SizedBox(height: 20,),
                    const Text(
                'Fill your information below or register with your social account.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54
                  
                ),
                textAlign: TextAlign.center,
              ),
                 
                
                const SizedBox(
                  height: 40,
                ),
          
                // Fill your information below or register with your social account.
            
                  const SizedBox(height: 25,),
                  
                   const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      
                      decoration: InputDecoration(
                         labelText:'Name',labelStyle: TextStyle(color: Colors.black) ,
                    
                        
                      
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
                        
                  ),
                  
                   const SizedBox(height: 25),
                   Padding(
                    
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: const TextField(
                          
                          decoration: InputDecoration(
                         
                          labelText:'Email Address',labelStyle: TextStyle(color: Colors.black) ,
                        
                            
                          
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
                      ),
                    ),
                        
                  ),  
                    
                  
                  const SizedBox(height: 25),
          
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                       
                        obscureText:!_ispasswordVisible ,
                        decoration: InputDecoration(
                          
                          labelText:'password',labelStyle: const TextStyle(color: Colors.black) ,
                        
                         
                       
                          
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
                     
          
              const SizedBox(height: 24),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                        backgroundColor:  const Color(0xffB46465),
                        side: const BorderSide(color: Colors.black12),
                        padding: const EdgeInsets.all(15),fixedSize: const Size(250, 50)
                      ),
                onPressed: () {
                
                      if (_formKey.currentState!.validate()) {}
                    
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VerifyCodeScreen()),
                  );
                },
                child: const Text('Sign Up',style:TextStyle(color: Colors.white) ,),
              ), 
              const SizedBox(
                height: 20,
              ),
              const Text('-----------------Or sign in with-----------------'),
              const SizedBox(
                height: 20,
              ),
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
