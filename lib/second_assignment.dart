import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondAssignment extends StatefulWidget {
  const SecondAssignment({super.key});
  @override
  State<SecondAssignment> createState() => _SecondAssignment();
}

class _SecondAssignment extends State<SecondAssignment> {
  var producteditingcontroller = TextEditingController();
  var focousnode = FocusNode();
  var categoryeditingcontroller = TextEditingController();
  var categoryfocousnode = FocusNode();
  var ishidepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Discover best \n products",
          ),
          actions: const [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assects/images/image1.jpg"),
            )
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: producteditingcontroller,
              focusNode: focousnode,
              decoration: const InputDecoration(
                hintText: "Search your Product",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: categoryeditingcontroller,
              focusNode: categoryfocousnode,
              obscureText: ishidepassword ? true : false,
              decoration: InputDecoration(
                hintText: "Search your Category",
                prefixIcon: Icon(Icons.search),
                suffixIcon: GestureDetector(
                    onTap: () {
                      print("Buttoon is clicked");
                      ishidepassword = !ishidepassword;
                      setState(() {});
                    },
                    child: ishidepassword
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (producteditingcontroller.text.toString().isEmpty) {
                  focousnode.requestFocus();
                  Fluttertoast.showToast(msg: "Enter product details first");
                }

                if (categoryeditingcontroller.text.toString().isEmpty) {
                  categoryfocousnode.requestFocus();
                  Fluttertoast.showToast(msg: "enter category details first");
                }
              },
              child: Text("submit")),
        ]));
  }
}
