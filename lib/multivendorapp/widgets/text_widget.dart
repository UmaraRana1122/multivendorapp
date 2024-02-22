import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textWidget(
  String text,
  String text2,
) {
  return Text.rich(TextSpan(
      text: text,
      style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff3E9892)),
      children: <InlineSpan>[
        TextSpan(
          text: text2,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff999DA3),
          ),
        )
      ]));
}
