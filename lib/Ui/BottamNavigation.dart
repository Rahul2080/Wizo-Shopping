import 'package:flutter/material.dart';
import 'package:wizoshopping/Ui/Screeen1.dart';
import 'package:wizoshopping/Ui/nav1.dart';
import 'package:wizoshopping/Ui/nav2.dart';
import 'package:wizoshopping/Ui/nav3.dart';

class Bottamnavigation extends StatefulWidget {
  const Bottamnavigation({super.key});

  @override
  State<Bottamnavigation> createState() => _BottamnavigationState();
}

class _BottamnavigationState extends State<Bottamnavigation> {
  final navigation = [
    Screeen1(),
    Nav1(),
    Nav2(),
    Nav3(),
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: currentindex==0? Color(0xFF8204FF): Colors.black), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: currentindex==1? Color(0xFF8204FF): Colors.black), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: currentindex==2? Color(0xFF8204FF): Colors.black), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.email,color: currentindex==3? Color(0xFF8204FF): Colors.black), label: "Email"),
        ],
      ),
      body:navigation[currentindex] ,
    );
  }
}
