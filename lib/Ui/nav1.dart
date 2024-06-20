import 'package:flutter/material.dart';

class Nav1 extends StatefulWidget {
  const Nav1({super.key});

  @override
  State<Nav1> createState() => _Nav1State();
}

class _Nav1State extends State<Nav1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("WELCOME"),),);
  }
}
