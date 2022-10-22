import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/colors.dart';
import '../screens/appScreens/typeSearch_screen.dart';

class ActionIconRow extends StatelessWidget {
  const ActionIconRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const TypeSearchScreen()));
          },
          child:  Icon(
            Icons.search_rounded,
            color: kPrimaryColor,
            size: 23.h,
          ),
        ),
        SizedBox(
          width: 21.w,
        )
      ],
    );
  }
}
