// import 'dart:js_interop';
// import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/assignment_one.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AssignmentOne(),
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
      leading:const  Icon(Icons.arrow_back_ios_new_rounded),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title :const Text("Food Station"),
        actions:const [
          Padding(
            padding:EdgeInsets.all(10),
           child:  Icon(Icons.notifications),
          ),
          
          Padding(
            padding:EdgeInsets.all(10),
            child: Text("Action"),
          ),
        ],
      ),
            
       
       
        
      
      body:const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
                children:[
                      Icon(Icons.stars),
                      Icon(Icons.stars),
                       Icon(Icons.stars),
                       Icon(Icons.stars),
                        Icon(Icons.stars)
                        
                      ],
                    ),
          ),
          
             Padding(
               padding: EdgeInsets.all(6.0),
               child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.stars),
                      Text("prep"),
                      Text("15 to 20 minutes"),
                    ],
                  )
               
                ],
               ),
             )
                
              ],
              ),
            )
      );
      
    
        
  }
}