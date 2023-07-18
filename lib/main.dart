// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'screens/startup_page.dart' as startup_page;

void main() {
  runApp(const Jumbo_House());
}

class Jumbo_House extends StatefulWidget {
  const Jumbo_House({super.key});

  @override
  State<Jumbo_House> createState() => _Jumbo_HouseState();
}

class _Jumbo_HouseState extends State<Jumbo_House> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const startup_page.MyHome(),
      theme:ThemeData(
        primarySwatch: Colors.green, 
      )
    );
  }
}