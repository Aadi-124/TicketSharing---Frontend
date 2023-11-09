import 'package:flutter/material.dart';
import 'package:ticketsharing/Login.dart';
import 'package:ticketsharing/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child:Container(
            child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[




          // Login Button
          ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context) => Login(),
                ));
              },
                style:ElevatedButton.styleFrom(
                  minimumSize: const Size(200,60),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    // foreground: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  onPrimary: const Color.fromARGB(255, 252, 254, 255),
                  backgroundColor: Color.fromARGB(255, 255, 132, 0)
                ),
              child:const Text('Log In'),
              ),


              Container(height: 50,),

              // Signn Up!
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()
                ));
              }, 
                style:ElevatedButton.styleFrom(
                  minimumSize: const Size(200,60),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    // foreground: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  onPrimary: const Color.fromARGB(255, 252, 254, 255),
                  backgroundColor: Color.fromARGB(255, 255, 132, 0)
                ),
              child:const Text('Sign Up'),
              )
        ],
      )

          ),
        ),
      ),      
    );
  }
}
