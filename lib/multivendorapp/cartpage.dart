import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';

import 'constants/customContainer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Container(
            height: 130.h,
          )),
      body: SafeArea(child: CustomContainer(containerContent: Container())),
    );
  }
}
