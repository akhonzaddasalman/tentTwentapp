


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/colors.dart';

class MovieCategoryList extends StatefulWidget {
  final String image;
  final String title;
  @override
  State<MovieCategoryList> createState() => _MovieCategoryListState();

  const MovieCategoryList({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
}

class _MovieCategoryListState extends State<MovieCategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
      ),
      height: double.infinity,
      child: Card(
        semanticContainer: true,
        elevation: 5,
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0.r),
        ),
        child: Stack(children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              widget.image,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              bottom: 25.h,
              left: 10.w,
              child: Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor),
              ))
        ]),
      ),
    );
  }
}
