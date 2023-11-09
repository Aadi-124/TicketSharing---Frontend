

import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';
import 'Page1.dart';


class Login extends StatelessWidget{
  
  Login({super.key});
  
  var data = {
      "mark@gmail.com":"123",
      "jack@gmail.com":"123",
      "jhon@gmail.com":"123",
      "marry@gmail.com":"123",
      "kevin@gmail.com":"123"
  };  
  
  
  final email = TextEditingController();
  final pass = TextEditingController();
  String errortextval = '';
  final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&*-+])(?=\S+$).{8,}$');
  final emailRegex = RegExp(r'^([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]{2,})$');
  

  @override
  Widget build(BuildContext context){

    // void showBanner() => ScaffoldMessage.of(context)showMaterial{      
    // }


    

    return Scaffold(
      appBar:AppBar(
        title:const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child:Container(
        child: Center(
          child: Container(
            width:300,
            margin:const EdgeInsets.fromLTRB(0,40, 0, 0),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.start,
              children:[
                const Text(
                  'Log In',
                style: TextStyle(
                  fontFamily:AutofillHints.name,
                  fontSize:30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),
                ),
                Container(height:80),





                // Email
                TextField(
                  controller: email,
                  // onChanged:(value){
                  //   if(passwordRegex.hasMatch(value)){
                  //     email.text = 'adasd';
                  //     print("Not Valid!");
                  //   }
                  // },
                  decoration:InputDecoration(
                    prefixIcon:const Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle:const  TextStyle(
                      color:Colors.grey,
                    ),
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(7),
                      borderSide:const BorderSide(
                        color:Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(7),
                      borderSide:const BorderSide(
                        color:Colors.grey,
                      ),
                    )
                  )
                ),
                Container(height:40),
                
                










                
                // Password
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration:InputDecoration(
                    prefixIcon:const Icon(Icons.password),
                    labelText: 'Password',
                    labelStyle:const  TextStyle(
                      color:Colors.grey,
                    ),
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(7),
                      borderSide:const BorderSide(
                        color:Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(7),
                      borderSide:const BorderSide(
                        color:Colors.grey,
                      ),
                    )
                  )
                ),
                Container(height:40),


                // Login Button
                ElevatedButton(onPressed: (){

                    String uEmail = email.text.toString();
                    String uPass = pass.text.toString();
                    pass.clear();
                    email.clear();

                    if(emailRegex.hasMatch(uEmail)){
                          if(data.containsKey(uEmail)){
                            if(data[uEmail] == uPass){
                              showBanner(context, 'Authentication Successfull!', Colors.green);
                              Timer(Duration(seconds: 2), () {
                                    // Navigator.pushNamed(context, '/Page1.dart');
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page1()));
                                  });
                            } else {
                              showBanner(context,'Incorrect Email or Password!',Colors.red);
                        }
                      } else {
                          showBanner(context,'Account Not Found!',Colors.red);
                      }
                        
                    } else {
                        showBanner(context,'Email Not Valid!',Colors.red);               
                    }
                    
    
                }, 
                  style:ElevatedButton.styleFrom(
                    minimumSize: const Size(200,60),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      // foreground: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    onPrimary: const Color.fromARGB(255, 252, 254, 255),
                    backgroundColor: Colors.blueAccent
                  ),
                child:const Text('Log In'),
                )
              
              ],
            ),
          )
        ),
        )
      ),   
    );   
  }

// BuildContext context;
//   Future navigateToNextPage() async {
//           await Future.delayed(const Duration(seconds: 2));
//           Navigator.push(context, MaterialPageRoute(builder: (context) => const Page1()),);


// }

  void showBanner(BuildContext context, String message,Color colour) {
    String title = 'ERROR!';
      if(colour == Colors.green){
        title = 'SUCCESS!';
      }
      Flushbar(
        title:  title,
        titleSize:20,
        message:  message,
        messageSize: 17,
        duration:  const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: colour,
      ).show(context);
  }

}


















