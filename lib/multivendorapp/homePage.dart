import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendorapp/multivendorapp/categoryList.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';
import 'package:multivendorapp/multivendorapp/heading.dart';

import 'constants/customContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Container(
            height: 110.h,
            color: kOffWhite,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.h,
                          backgroundColor: kSecendory,
                          backgroundImage:
                              NetworkImage('http://picsum.photos/200'),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deliver To",
                              style: TextStyle(
                                  color: kSecendory,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: width * 0.65,
                              child: Text(
                                "16787 21st Ave N, Playmouth, MN 55477",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: kGreyLight,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "❄️",
                          style: TextStyle(fontSize: 35),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
      body: SafeArea(
          child: CustomContainer(
              containerContent: Container(
        child: Column(
          children: [CategoryList(), Heading()],
        ),
      ))),
    );
  }
}
