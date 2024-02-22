import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';
import 'package:multivendorapp/multivendorapp/widgets/text_widget.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String text;
    void Function()? onTap;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: textWidget("text", "text2")
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              AntDesign.appstore1,
              color: kSecendory,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
