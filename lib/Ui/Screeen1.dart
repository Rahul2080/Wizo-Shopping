import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screeen1 extends StatefulWidget {
  const Screeen1({super.key});

  @override
  State<Screeen1> createState() => _Screeen1State();
}

class _Screeen1State extends State<Screeen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Wizo',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20.h,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          leading: CircleAvatar(radius: 20, backgroundColor: Colors.black,),
          actions: [Icon(Icons.notifications_none), Icon(Icons.favorite_border)],
    ),
    );
  }
}
