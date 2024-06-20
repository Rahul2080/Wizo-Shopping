import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wizoshopping/Bloc/ProductBloc/product_bloc.dart';

import '../Bloc/ReviewBloc/review_bloc.dart';
import '../Repsitory/ModelClass/ProductModel.dart';
import '../Repsitory/ModelClass/ReveiwModel.dart';

class Screen2 extends StatefulWidget {
  final String id;

  const Screen2({super.key, required this.id});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int yourActiveIndex = 0;
  late ProductModel data;
  late ReveiwModel mode;

  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context).add(FetchProduct(id: widget.id));
    BlocProvider.of<ReviewBloc>(context).add(FetchReview(id: widget.id));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
          if (state is ProductBlocLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ProductBlocError) {
            return Center(
              child: Text("Error"),
            );
          }
          if (state is ProductBlocLoaded) {
            data = BlocProvider.of<ProductBloc>(context).productModel;
            print("hello" + data.data!.productPhotos!.length.toString());
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CarouselSlider.builder(
                      itemCount: data.data!.productPhotos!.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        child: Image.network(
                          data.data!.productPhotos![itemIndex].toString(),
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
                      padding: const EdgeInsets.only(left: 140, top: 360),
                      child: AnimatedSmoothIndicator(
                        activeIndex: yourActiveIndex,
                        count: data.data!.productPhotos!.length,
                        effect: WormEffect(dotWidth: 10.w, dotHeight: 10.h),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 26, left: 10),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
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
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 354, top: 38),
                      child: CircleAvatar(
                        radius: 4.r,
                        backgroundColor: Color(0xFF8204FF),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 390, top: 28),
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
                        SizedBox(
                          width: 230.w,
                          child: Text(
                            data.data!.productTitle.toString(),
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
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
                        data.data!.productPrice.toString(),
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '\$300',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1.6),
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
                              data.data!.productStarRating.toString(),
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
                    data.data!.productDescription.toString(),
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
                  padding: const EdgeInsets.only(left: 10, top: 10),
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
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
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
                              SizedBox(
                                width: 4.w,
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
                          color: Color(0xFF8204FF),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                BlocBuilder<ReviewBloc, ReviewState>(builder: (context, state) {
                  if (state is ReviewBlocLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is ReviewBlocError) {
                    return Center(
                      child: Text("Error"),
                    );
                  }
                  if (state is ReviewBlocLoaded) {
                    mode = BlocProvider.of<ReviewBloc>(context).reveiwModel;
                    return SizedBox(
                      height: 300.h*mode.data!.reviews!.length,
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, position) {
                          return Container(
                            width: 100.w,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(mode.data!.reviews![position].reviewComment.toString()),
                            ),
                          );
                        },
                        separatorBuilder: (context, position) {
                          return SizedBox(
                            height: 30.h,
                          );
                        },
                        itemCount: mode.data!.reviews!.length,
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                }),
              ],
            );
          } else {
            return SizedBox();
          }
        }),
      ),
    );
  }
}
