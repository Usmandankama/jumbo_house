// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'startup_page.dart' as startup_page;
import 'signup_page.dart' as signup_page;
import 'login_page.dart' as login_page;
import 'food_page.dart' as food_page;


class startupPage extends StatefulWidget {
  const startupPage({super.key});

  @override
  State<startupPage> createState() => _startupPageState();
}

class _startupPageState extends State<startupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Container(
              height:450,
              padding:const EdgeInsets.only(left:20,top:250),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: const [
                  Text(
                    "JUMBO HOUSE",
                    style: TextStyle(
                      fontSize:30,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height:10),
                  Text("Discover the difference in all varity of food know to man",textAlign: TextAlign.center),
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(left:85,top:30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                      elevation: MaterialStatePropertyAll(20),
                    ),
                    child: const Text("SIGN UP"),
                  ),
                  const SizedBox(width:20),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 41, 116, 41)),
                      elevation: MaterialStatePropertyAll(20),
                    ),
                    child: const Text("SIGN IN"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
