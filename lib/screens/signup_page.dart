// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'login_page.dart' as login_page;

class Signup_Page extends StatefulWidget {
  const Signup_Page({super.key});

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignUp());
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(height: 150),
                    const Text(
                      textAlign: TextAlign.start,
                      "Sign up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
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
                      child: TextFormField(
                        validator: (String? inValue) {
                          if (inValue == "") {
                            return "Please input a username";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Username",
                          // labelText: "Username",
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
                      child: TextFormField(
                        obscureText: true,
                        validator: (String? inValue) {
                          if (inValue!.length < 8) {
                            return "Password must be up to eight characters";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
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
                      child: TextFormField(
                        obscureText: true,
                        validator: (String? inValue2) {
                          if (inValue2!.length < 8) {
                            return "Password must be up to eight characters";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Confirm Password",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.only(left: 120, right: 120))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const login_page.LoginPage(),
                  ),
                );
              },
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
