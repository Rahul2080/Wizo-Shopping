import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizoshopping/Bloc/AmazonBloc/amazon_bloc.dart';
import 'package:wizoshopping/Repsitory/ModelClass/AmazonModel.dart';
import 'package:wizoshopping/Ui/Screen2.dart';

class Screeen1 extends StatefulWidget {
  const Screeen1({super.key});

  @override
  State<Screeen1> createState() => _Screeen1State();
}

class _Screeen1State extends State<Screeen1> {
  late AmazonModel details;

  @override
  void initState() {
    BlocProvider.of<AmazonBloc>(context)
        .add(AmazonShopEvent(searchKey: '', forAll: true));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wizo',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.h,
              shadows: [
                Shadow(
                    blurRadius: 1, color: Colors.black12, offset: Offset(3, 3))
              ],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        leading: Row(
          children: [
            SizedBox(
              width: 7.w,
            ),
            CircleAvatar(
              radius: 18.r,
              backgroundColor: Color(0xFFE5DCFC),
              child: SizedBox(
                width: 30.w,
                height: 30.h,
                child: Image.asset(
                  "assets/Diamond.png",
                  color: Color(0xFF8204FF),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Icon(
                Icons.notifications_none,
                size: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, left: 17),
                child: CircleAvatar(
                  radius: 4.r,
                  backgroundColor: Color(0xFF8204FF),
                ),
              )
            ],
          ),
          SizedBox(
            width: 11.w,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
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
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Container(
                width: 340.w,
                height: 40.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: TextField(
                  controller: controller,
                  onSubmitted: (value) {
                    BlocProvider.of<AmazonBloc>(context).add(AmazonShopEvent(
                        searchKey: controller.text, forAll: false));
                  },
                  decoration: InputDecoration(
                    labelText: "search",
                    prefix: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 18),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 210.w),
                  Text(
                    'See all',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF8204FF),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 16),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          color: Color(0x197F52EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Image.asset(
                            "assets/food.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Foods',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          color: Color(0x3F1E7CFC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Image.asset(
                            "assets/gift.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Gift',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          color: Color(0x3FFF8037),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Image.asset(
                            "assets/spec.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Fashion',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          color: Color(0x26133568),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Image.asset(
                            "assets/game.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Gadget',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          color: Color(0x3FFFC887),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Image.asset(
                            "assets/watch.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Accessory',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Stack(
              children: [
                Container(
                  width: 350.w,
                  height: 120.h,
                  decoration: ShapeDecoration(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/container img.png",
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Don't Miss Out!",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Text(
                    "Save Up to 75% Off",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 90),
                  child: Container(
                    width: 100.w,
                    height: 30.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Shop now",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Color(0xFF8204FF),
                            fontSize: 12.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  Text(
                    'Featured products',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 170.w),
                  Text(
                    'See all',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFF8204FF),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<AmazonBloc, AmazonState>(builder: (context, state) {
              if (state is amazonBlocLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is amazonBlocError) {
                return Center(
                  child: Text("Error"),
                );
              }
              if (state is amazonBlocLoaded) {
                details = BlocProvider.of<AmazonBloc>(context).amazonModel;
                return SizedBox(
                  height: 140 * details.data!.products!.length.toDouble(),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 400 / 540,
                    shrinkWrap: true,
                    children: List.generate(
                      details.data!.products!.length,
                      (index) {
                        return TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => Screen2(id: details.data!.products![index].asin.toString(),


                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: ShapeDecoration(
                              color:
                                  Colors.black.withOpacity(0.05000000074505806),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: SizedBox(
                                      width: 150.w,
                                      height: 150.h,
                                      child: Image.network(
                                        details
                                            .data!.products![index].productPhoto
                                            .toString(),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    details.data!.products![index].productTitle
                                        .toString(),
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        details
                                            .data!.products![index].productPrice
                                            .toString(),
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            color: Color(0xFF8204FF),
                                            fontSize: 13.sp,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 69.w,
                                      ),
                                      Icon(
                                        Icons.add_shopping_cart,
                                        color: Color(0xFF8204FF),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              } else {
                return SizedBox();
              }
            }),
          ],
        ),
      ),
    );
  }
}
