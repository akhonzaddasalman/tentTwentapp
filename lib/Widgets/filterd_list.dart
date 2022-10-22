import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/colors.dart';

class FilterdList extends StatelessWidget {
  final String name;
  final String category;
  final String image;
  final int index;
  const FilterdList({
    Key? key,
    required this.image,
    required this.index,
    required this.name,
    required this.category,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: ListTile(
        leading: Container(
          height: 150.h,
          width: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 14.sp,
            color: kPrimaryColor,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              category,
              style: TextStyle(
                fontSize: 12.sp,
                color: kDescriptionColor,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
        trailing: Icon(Icons.more_horiz_outlined,size: 30.h,),
      ),
    );
  }
}