import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentwentyapp/Colors/colors.dart';
import 'package:tentwentyapp/screens/appScreens/proced_screen.dart';

import '../../components/buttons.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              flex: 1,
                child: SizedBox(
              width: double.infinity,
              child: Stack(children: <Widget>[
                SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/Images/1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 40.h,
                    left: 15.w,
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.arrow_back_ios,color: kWhiteColor,size: 26,),
                          SizedBox(width: 5.w,),
                          const Text('Watch',style: TextStyle(color: kWhiteColor,fontSize: 18,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    )),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 110.h,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 308.w,
                        // height: 67.h,
                        child: Text(
                          'The Theaters December 22,2022',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: kWhiteColor,
                              fontWeight: FontWeight.w700,
                              height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 47.h),
                        height: 50.h,
                        width: double.infinity,
                        child: buildTicketButton(
                          'Get Ticket',
                          () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const CinemaHall()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 47.h),
                        height: 50.h,
                        width: double.infinity,
                        child: buildTrailerButton(
                          Icons.play_arrow_rounded,
                          'Watch Trailer',
                          () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
              // color: Colors.green,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Center(
                        child: buildButton(
                          'Action',
                          () {},
                        ),
                      ),
                      Center(
                        child: buildButton(
                          'Thriller',
                          () {

                          },
                        ),
                      ),
                      buildButton(
                        'Scince',
                        () {},
                      ),
                      Center(
                        child: buildButton(
                          'Fiction',
                          () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them. Discover the origins of the very first independent intelligence agency in The King's Man. The Comic Book “The Secret Service” by Mark Millar and Dave Gibbons.",
                    style: TextStyle(
                      fontSize: 16,
                      color: kDescriptionColor
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
