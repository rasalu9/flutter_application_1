import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AssignmentThird extends StatefulWidget {
  const AssignmentThird({super.key});

  @override
  State<AssignmentThird> createState() => _AssignmentThird();
}

class _AssignmentThird extends State<AssignmentThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Products"),
          actions: [
            Title(
              color: Colors.black,
              child: Icon(Icons.notification_add),
            )
          ],
        ),
        body: Column(children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 1.0)),
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            width: 120,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: Icon(Icons.home),
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
                child: Text(
                  "Home",
                ),
              )
            ],
          ),
          Column(children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black, width: 1.0)),
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              width: 120,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Icon(Icons.wallet),
              ),
            ),
            Column(children: [
              Text("Wallet"),
              Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 90, 27, 198),
                          border: Border.all(color: Colors.black, width: 1.0)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 40),
                      width: 120,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        child: Icon(Icons.camera),
                      )),
                  Column(children: [
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 82, 127),
                            border:
                                Border.all(color: Colors.black, width: 1.0)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 50, horizontal: 40),
                        width: 120,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                          child: Icon(Icons.phone),
                        )),

                    //  Column(children: [
                    Column(children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border:
                                Border.all(color: Colors.black, width: 1.0)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 50, horizontal: 40),
                        width: 120,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                          child: Icon(Icons.email),
                        ),
                      )
                    ])
                  ])
                ],
              ),
              // ]
            ])
          ])
        ]));
  }
}
