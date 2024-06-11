import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( "Expanded method"),
      ),
      body: Column(
        children: [
          Expanded(child: Text("1234")),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(width: 40,color: Colors.black),

                
              ),
            ),
          )
        ]
      )
      );
  }
}

        

                
              
          

          
      