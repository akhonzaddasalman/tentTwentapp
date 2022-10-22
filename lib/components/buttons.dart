import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/colors.dart';

ElevatedButton buildTicketButton(title, onPressed,
    {TextStyle? textStyle, ButtonStyle? style}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: style ??
        ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.cyan)),
    child: Text(
      title,
      style: textStyle ?? TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w700,color: kWhiteColor),
    ),
  );
}

Container buildButton(title, onPressed,
    {TextStyle? textStyle, ButtonStyle? style}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.h),
    height: 26.h,
    width: 66.w,
    child: ElevatedButton(
      onPressed: onPressed,
      style: style ??
          ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.cyan)),
      child: Text(
        title,
        style: textStyle ?? TextStyle(fontSize: 9.sp,color: kWhiteColor),
      ),
    ),
  );
}


OutlinedButton buildTrailerButton(icon,title, onPressed) {
  return OutlinedButton(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
      side: BorderSide(
        width: 1.5.h,
        color: Colors.cyan,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Row(
        children: [
          Icon(icon,size: 27,color: kWhiteColor,),
          SizedBox(width: 15.w,),
          Text(
            title,
            style: TextStyle(fontSize: 18.sp, color: kWhiteColor,fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}
