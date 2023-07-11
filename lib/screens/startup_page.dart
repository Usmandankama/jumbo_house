// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'signup_page.dart' as signup_page;
import 'login_page.dart' as login_page;

class startupPage extends StatefulWidget {
  const startupPage({super.key});

  @override
  State<startupPage> createState() => _startupPageState();
}

class _startupPageState extends State<startupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the HomeScreen widget.
          // '/': (context) => const startupPage(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/login_page': (context) => const login_page.LoginPage(),
          '/signup_page': (context) => const signup_page.Signup_Page(),
        },
        debugShowCheckedModeBanner: false,
        home: const MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Container(
            height: 450,
            padding: const EdgeInsets.only(left: 20, top: 250),
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
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                    "Discover the difference in all varity of food know to man",
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 85, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const signup_page.Signup_Page()),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    elevation: MaterialStatePropertyAll(20),
                  ),
                  child: const Text("SIGN UP"),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const login_page.LoginPage(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 41, 116, 41)),
                    elevation: MaterialStatePropertyAll(20),
                  ),
                  child: const Text("SIGN IN"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
