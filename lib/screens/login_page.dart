import 'package:flutter/material.dart';
import 'signup_page.dart' as signup_page;
import 'main_page.dart' as main_page;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80, bottom: 10),
              child: const Text(
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                "JUMBO FOOD",
              ),
            ),
            const Text(
              "Taste the difference",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 5),
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5),
              margin: const EdgeInsets.only(top: 20, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(width: 8),
                Text(
                  "Forgot password",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(
                    EdgeInsets.only(left: 112, right: 112)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const main_page.main_page()),
                );
              },
              child: const Text("Log in"),
            ),
            const SizedBox(
              height: 6,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.only(left: 80, right: 80)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const main_page.main_page(),
                  ),
                );
              },
              child: const Text("Sign with Google"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  const Text(
                    "You dont have an account?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const signup_page.Signup_Page(),
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.green),
                    ),
                    child: const Text("Sign up"),
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
