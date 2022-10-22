import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/colors.dart';

InputDecoration textFieldIconDecoration(
  prefixIcon,
  hintText,
  suffixIcon,
) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: kHintTextColor, fontSize: 12.sp),
    prefixIcon: Icon(
      prefixIcon,
      color: kPrimaryColor,
      size: 20.h,
    ),
    suffixIcon: Icon(
      suffixIcon,
      color: kPrimaryColor,
      size: 20.h,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.5.w, color: kBorderColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.7.w, color: kBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.7.w, color: kBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: kPrimaryColor),
    ),
  );
}

InputDecoration textFieldDecoration(
  hintText,
) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: kHintTextColor, fontSize: 12.sp),
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.5.w, color: kBorderColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.7.w, color: kBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.7.w, color: kBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: kPrimaryColor),
    ),
  );
}
InputDecoration appBarTextFieldDecoration(prefixIcon, hintText, suffixIcon) {
  return InputDecoration(
    prefixIcon: Icon(
      prefixIcon,
      color: kIconSearchColor,
    ),
    suffixIcon: Icon(
      suffixIcon,
      color: kH2Color,
    ),
    fillColor: kTextFieldFillColor,
    filled: true,
    hintText: hintText,
    hintStyle: TextStyle(color: kHintTextColor, fontSize: 15.sp,fontWeight: FontWeight.w500),
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  );
}
InputDecoration appbarTextField(hintText) {
  return InputDecoration(
    filled: true,
    hintText: hintText,
    hintStyle: TextStyle(fontSize: 14.sp, color: kDescriptionColor),
    fillColor: kWhiteColor,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none),
  );
}

InputDecoration searchTextField(hintText, icon) {
  return InputDecoration(
    filled: true,
    prefixIcon: Icon(
      icon,
    ),
    hintText: hintText,
    hintStyle: TextStyle(fontSize: 14.sp, color: kDescriptionColor),
    fillColor: kWhiteColor,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none),
  );
}

InputDecoration textFieldSheetDecoration(
    prefixIcon, hintText, suffixIcon, function) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: kH2Color, fontSize: 12.sp),
    prefixIcon: Icon(
      prefixIcon,
      color: kPrimaryColor,
      size: 20.h,
    ),
    suffixIcon: IconButton(
      color: kPrimaryColor,
      icon: Icon(suffixIcon),
      onPressed: function,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.5.w, color: kBorderColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(width: 0.7.w, color: kBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 0.7.w, color: kBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: kPrimaryColor),
    ),
  );
}
