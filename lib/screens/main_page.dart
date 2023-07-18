// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class main_page extends StatefulWidget {
  const main_page({super.key});
  @override
  State<main_page> createState() => __main_pageState();
}

class __main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 231, 229, 229),
        appBar: AppBar(
          backgroundColor: Colors.green,
          // foregroundColor: Colors.black,
          title: const Text("Home"),
          elevation: 0,
        ),
        drawer: Drawer(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("Usman Abubakar"),
                accountEmail: Text("usmandankama1@gmail.com"),
              ),
              ListTile(
                title: Text("Menu"),
                leading: Icon(Icons.restaurant_menu),
              ),
              Divider(),
              ListTile(
                title: Text("Food"),
                leading: Icon(Icons.fastfood),
              ),
              Divider(),
              ListTile(
                title: Text("Rating"),
                leading: Icon(Icons.rate_review),
              ),
              Divider(),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            Container(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(top: 20),
            //   height: 100,
            //   width: 20,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     image: const DecorationImage(
            //       image: AssetImage('assets/images/bg2.jpg'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   // color: Colors.black,
            //   child: Text(''),
            // ),
            const SizedBox(height: 20),
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        "BURGER",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/4.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        "BURGER",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/4.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 231, 229, 229),
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood,
              ),
              label: "FOOD",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "PROFILE",
            ),
          ],
        ),
      ),
    );
  }
}
