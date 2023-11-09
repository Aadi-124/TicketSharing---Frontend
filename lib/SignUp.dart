

// import 'package:flutter/material.dart';
// import 'package:ticketsharing/Data.dart';

// class SignUp extends StatelessWidget{
  
//   SignUp({super.key});
  
//   final email = TextEditingController();
//   final phone = TextEditingController();
//   final pass  = TextEditingController();
//   // var credentails = List(10);

//   var passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&*-+])(?=\S+$).{8,}$');
//   var emailRegex = RegExp(r'^([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]{2,})$');
  
 

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:AppBar(
//         title:const Text('Sign Up!'),
//       ),
//       body: SingleChildScrollView(
//         child:Container(
//           child: Center(
//             child: Container(
//               width:300,
//               margin:const EdgeInsets.fromLTRB(0,40, 0, 0),
//               child:Column(
//                 mainAxisAlignment:MainAxisAlignment.start,
//                 children:[
//                   const Text(
//                     'Sign Up',
//                   style: TextStyle(
//                     fontFamily:AutofillHints.name,
//                     fontSize:30,
//                     color: Colors.red,
//                     fontWeight: FontWeight.bold
//                   ),
//                   ),
//                   Container(height:80),

//                   // Email
//                   TextField(
//                     controller: email,
//                     decoration:InputDecoration(
//                       prefixIcon:const Icon(Icons.email),
//                       labelText: 'Email',
//                       labelStyle:const  TextStyle(
//                         color:Colors.grey,
//                       ),
//                       border: OutlineInputBorder( 
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:const BorderSide(
//                           color:Colors.grey,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder( 
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:const BorderSide(
//                           color:Colors.grey,
//                         ),
//                       )
//                     )
//                   ),
//                   Container(height:40),
                  
                  
                  
//                   // Phone Number
//                   TextField(
//                     controller: phone,
//                     obscureText: false,
//                     keyboardType: TextInputType.number,
//                     decoration:InputDecoration(
//                       prefixIcon:const Icon(Icons.phone),
//                       labelText: 'Phone',
//                       labelStyle:const  TextStyle(
//                         color:Colors.grey,
//                       ),
//                       border: OutlineInputBorder( 
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:const BorderSide(
//                           color:Colors.grey,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder( 
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:const BorderSide(
//                           color:Colors.grey,
//                         ),
//                       )
//                     )
//                   ),
//                   Container(height:40),
                
                
                
                
                
                
//                   // Password
//                   TextField(
//                     controller: pass,
//                     obscureText: true,
//                     // keyboardType: TextInputType.number,
//                     decoration:InputDecoration(
//                       prefixIcon:const Icon(Icons.password),
//                       labelText: 'Password',
//                       labelStyle:const  TextStyle(
//                         color:Colors.grey,
//                       ),
//                       border: OutlineInputBorder( 
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:const BorderSide(
//                           color:Colors.grey,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder( 
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:const BorderSide(
//                           color:Colors.grey,
//                         ),
//                       )
//                     )
//                   ),
//                   Container(height:40),





//                   // Sign Up Button
//                   ElevatedButton(onPressed: (){
//                       String uEmail = email.text.toString();
//                       String uPhone = phone.text.toString();
//                       String uPass = pass.text.toString();
//                       pass.clear();
//                       phone.clear();
//                       email.clear();
//                       print("Email = $uEmail\nPhone Number = $uPhone\nPassword = $uPass"); 
//                       if(!emailRegex.hasMatch(uEmail) || !passwordRegex.hasMatch(uPass) || uPhone.length != 10){
//                         if(data.containsKey(uEmail)){
//                         showDialog(
//                               context: context,
//                               builder: (context) => const AlertDialog(
//                               title: Text('Account Already Exists with this mail!'),
//                             ),
//                           );
//                         }
//                       else if(!emailRegex.hasMatch(uEmail)){
//                         showDialog(
//                               context: context,
//                               builder: (context) => const AlertDialog(
//                               title: Text('Please Enter Email in correct format!'),
//                             ),
//                           );
//                       } 
//                       else if(!passwordRegex.hasMatch(uPass)){
//                         showDialog(
//                               context: context,
//                               builder: (context) => const AlertDialog(
//                               title: Text('Password Should be in correct format!'),
//                             ),
//                           );
//                       }
//                       else if(uPhone.length != 10){
//                         showDialog(
//                               context: context,
//                               builder: (context) => const AlertDialog(
//                               title: Text('Incorrect phone Number!'),
//                             ),
//                           );
//                       } else {
//                             data.putIfAbsent(uEmail, () => uPass);
//                             showDialog(
//                               context: context,
//                               builder: (context) => const AlertDialog(
//                               title: Text('Regestered Successfully!'),
//                             ),
//                           );    
//                       }
//                     } else {
//                         showDialog(
//                               context: context,
//                               builder: (context) => const AlertDialog(
//                               title: Text('Regestered Successfully!'),
//                             ),
//                           );
//                     } 
//                   }, 
//                     style:ElevatedButton.styleFrom(
//                       minimumSize: const Size(200,60),
//                       textStyle: const TextStyle(
//                         fontSize: 20,
//                         // foreground: Colors.white,
//                         fontWeight: FontWeight.bold
//                       ),
//                       onPrimary: const Color.fromARGB(255, 252, 254, 255),
//                       backgroundColor: Colors.blueAccent
//                     ),
//                   child:const Text('Log In'),
//                   )
                
//                 ],
//               ),
//             )
//           ),
//         )
//       ),        
//     );   
//   }
// }



import 'package:flutter/material.dart';
import 'package:ticketsharing/Data.dart';
import 'package:another_flushbar/flushbar.dart';


class SignUp extends StatelessWidget {
  SignUp({super.key});

  final email = TextEditingController();
  final phone = TextEditingController();
  final pass = TextEditingController();

  final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&*-+])(?=\S+$).{8,}$');
  final emailRegex = RegExp(r'^([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zAZ0-9-]{2,})$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up!'),
      ),
      body:
        Center(
          child: Container(
            width: 300,
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: AutofillHints.name,
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 80),

                // Email
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(height: 40),

                // Phone Number
                TextField(
                  controller: phone,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: 'Phone',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(height: 40),

                // Password
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(height: 40),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    String uEmail = email.text.toString();
                    String uPhone = phone.text.toString();
                    String uPass = pass.text.toString();
                    if (!emailRegex.hasMatch(uEmail) || !passwordRegex.hasMatch(uPass) || uPhone.length != 10) {
                      if (data.containsKey(uEmail)) {
                        showBanner(context, 'Account Already Exists with this mail!',Colors.red);
                      } else if (!emailRegex.hasMatch(uEmail)) {
                        showBanner(context, 'Please Enter Email in the correct format!',Colors.red);
                      } else if (!passwordRegex.hasMatch(uPass)) {
                        showBanner(context, 'Password should be in the correct format!',Colors.red);
                      } else if (uPhone.length != 10) {
                        showBanner(context, 'Incorrect phone number!',Colors.red);
                      } else {
                        data.putIfAbsent(uEmail, () => uPass);
                        showBanner(context, 'Registered Successfully!',Colors.green);
                      }
                    } else {
                      showBanner(context, 'Registered Successfully!',Colors.green);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 60),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    foregroundColor: const Color.fromARGB(255, 252, 254, 255),
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
    );
  }

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














