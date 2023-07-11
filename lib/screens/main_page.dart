// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
class main_page extends  StatefulWidget {
  const main_page({super.key});
  @override
  State<main_page> createState() => __main_pageState();
}
class __main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 229, 229),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text("Home"),
          elevation: 5,
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
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 200,
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              // color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:const EdgeInsets.only(left:10,right:10,top:50,bottom:10),
                    child: Column(
                      children: const [
                        Text(
                          'Get the jumbo special',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height:10),
                        Text(
                          'For as low as \$2.99',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("LEARN MORE"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 700,
              width: 500,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "MENU",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.amber,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.lightGreen,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 150,
                        width: 150,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 500,
              child: Column(
                children: [
                  const Text(
                    "REVIEWS",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    height:10,
                  ),
                  const Text(
                    "Write us a review",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal:20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Send review"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: "FOOD",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "PROFILE",
            ),
          ],
        ),
      );
  }
}