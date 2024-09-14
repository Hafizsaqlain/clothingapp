import 'package:clotingapp/ContinueProfileScreen.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _ispasswordVisible = false;
  bool _newpasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: Padding(
        
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80,),
              
               const Center(child: Text("New Password",style: TextStyle(fontSize: 40),)),
                  const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Center
                (child: Text('Your new password must be different from previously used passwords.',style: TextStyle(color: Colors.black54),)),
              ),
              const SizedBox(
                height: 30,
              ),
                 Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      
                      child: Column(
                        children: [
                             TextField(
                       
                        obscureText:!_ispasswordVisible,
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
                     
                          ),
                  
                          
                          ),
                        ],
                      ),
                      
                      
                    ),
              const SizedBox(height: 16),
              Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      
                      child: Column(
                        children: [
                             TextField(
                       
                        obscureText:!_newpasswordVisible,
                        decoration: InputDecoration(
                          
                           labelText:'Confrim Password',labelStyle: const TextStyle(color: Colors.black) ,
                         
                          
                          
                           suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _newpasswordVisible = !_newpasswordVisible;
                          });
                        },
                        icon: Icon(
                          _newpasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,),
                        ),
                     
                          ),
                  
                          
                          ),
                        ],
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
                    MaterialPageRoute(builder: (context) => const ContinueProfileScreen()),
                  );
                },
                child: const Text('Create New Password',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
