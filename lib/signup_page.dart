// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class Signup_Page extends StatefulWidget {
  const Signup_Page({super.key});

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        width: 500,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 1, 27, 143),
              Color.fromARGB(255, 9, 110, 141)
            ],
          ),
        ),
        child: Column(children: [
          Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: "Username",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                    hintText: "Enter Password",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                    hintText: "Confirm Password",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.only(left: 120, right: 120))),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back'),
          ),
        ]),
      )),
    );
  }
}
