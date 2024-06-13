import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/second_assignment.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AssignmentOne extends StatefulWidget {
  const AssignmentOne({super.key});

  @override
  State<AssignmentOne> createState() => _AssignmentOneState();
}

class _AssignmentOneState extends State<AssignmentOne> {
  var cookTime = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Stawberry"),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                cookTime++;
              });
            },
            child: const Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue quam quis ante mollis blandit. Nunc elementum libero ipsum, eget tincidunt eros sollicitudin id. Integer cursus arcu eu interdum porta. Etiam id ante hendrerit, mollis diam ac, vulputate enim. Vivamus hendrerit interdum sem, nec bibendum orci finibus a. Curabitur faucibus consectetur nibh. Vivamus sit amet dui at mauris scelerisque imperdiet et eget ante. Sed eget tincidunt metus, eu bibendum arcu. Donec a rutrum libero.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "assets/fonts/Roboto-Black.ttf",
                    color: Colors.deepPurple,
                    fontSize: 14,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    backgroundColor: Color.fromARGB(0, 135, 90, 90)),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("170 Reviews"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.stars),
                      Text("PrepI:"),
                      Text("25 mins"),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SecondAssignment()));
                          },
                          child: const Icon(Icons.timer)),
                      const Text("Cook"),
                      Text("$cookTime Hour")
                    ],
                  ),
                  // const Column(
                  //   children: [Icon(Icons.feed), Text("Feed"), Text("4-6")],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // commonRowWidget(Icon icon, String firstText, String secondText) {
  //   return Column(
  //     children: [icon, Text(firstText), Text(secondText)],
  // );
}
// }