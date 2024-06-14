import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int yourActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    child: Image.asset(
                      "assets/shoe.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  options: CarouselOptions(
                    height: 300.h,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        yourActiveIndex = index;
                      });
                    },
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180, top: 330),
                  child: AnimatedSmoothIndicator(
                    activeIndex: yourActiveIndex,
                    count: 3,
                    effect: WormEffect(dotWidth: 10.w, dotHeight: 10.h),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26, left: 10),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () { Navigator.of(context).pop(); },
                        child: CircleAvatar(
                          radius: 14.r,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 13.r,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 230.w,
                      ),
                      Icon(
                        Icons.notifications_none,
                        size: 30,
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.favorite_border,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 322, top: 30),
                  child: CircleAvatar(
                    radius: 5.r,
                    backgroundColor: Color(0xFF8204FF),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 370, top: 23),
                  child: CircleAvatar(
                    radius: 8.r,
                    child: Text(
                      '1',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Color(0xFF8204FF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'Headphone',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    Container(
                      width: 100.w,
                      height: 40.h,
                      decoration: ShapeDecoration(
                        color: Color(0x198204FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 31.w,
                              height: 31.h,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset(
                                  "assets/sale.png",
                                ),
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'On sale',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Color(0xFF8204FF),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    '\$155 /',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    '\$300',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    width: 80.w,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0x19FF8037),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: SizedBox(
                              width: 36.w,
                              height: 36.h,
                              child: Icon(
                                Icons.star,
                                color: Color(0xFFFF7F37),
                              )),
                        ),
                        Text(
                          '4.2',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Color(0xFF414141),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 80.w,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0x191F7DFD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                              width: 36.w,
                              height: 36.h,
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.blue,
                              )),
                        ),
                        Text(
                          '3.8',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Color(0xFF414141),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text(
                    '132 Reviews',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Color',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Opacity(
                    opacity: 0.20,
                    child: CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Color(0xFFFF7F37),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Opacity(
                    opacity: 1,
                    child: CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Color(0xFF8B8B8B),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Opacity(
                    opacity: 0.20,
                    child: CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Color(0xFF8204FF),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Opacity(
                    opacity: 0.20,
                    child: CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Color(0xFF133568),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Text(
                'Description',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Our compact and foldable Bluetooth earbuds are renowned for their lightweight build, offering a \nconvenient and portable solution for audiophiles\n on the go',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 12),
              child: Text(
                'Specifications',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Text(
                    'Model Name',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  Text(
                    'Boat Airdopes 121V2',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    'Color',
                    style: TextStyle(
                      color: Color(0xFF414141),
                      fontSize: 12.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 185.w,
                  ),
                  Text(
                    'Gray',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Row(
                children: [
                  Container(
                    width: 130.w,
                    height: 47.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Color(0xFF8204FF),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(
                            Icons.remove,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '1',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Color(0xFF8204FF),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(Icons.add),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 130.w,
                    height: 47.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8204FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_checkout,
                            color: Colors.white,
                          ),
                          Text(
                            'Buy now',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: Color(0x198204FF),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xFF8204FF),size: 30,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
