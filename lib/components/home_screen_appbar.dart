
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentwentyapp/Colors/colors.dart';
import '../Widgets/action_icon_row.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Watch',
        style: TextStyle(fontSize: 16.h, color: kPrimaryColor),
      ),
      actions: const [ActionIconRow()],
    );
  }
}



AppBar buildAppBar(icon,mainTitle,baseTitle) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Column(
      children: [
        Text(
          mainTitle,
          style: TextStyle(fontSize: 16.h, color: kPrimaryColor),
        ),
        Text(
          baseTitle,
          style: TextStyle(fontSize: 13.h, color: kSeatColor),
        ),
      ],
    ),
    leading: Icon(
      icon,
      color: kPrimaryColor,
      size: 23.h,
    ),
  );
}
