import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/colors.dart';

class MovieList extends StatelessWidget {
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Card(
        semanticContainer: true,
        elevation: 5,
        margin: const EdgeInsets.all(4),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0.r),
        ),
        child: Column(
          children: [
            Stack(children: <Widget>[
              Container(
                height: 183.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 25.h,
                left: 10.w,
                  child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor),
              ))
            ]),
          ],
        ),
      ),
    );
  }

  const MovieList({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
}
