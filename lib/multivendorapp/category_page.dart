import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text(
          "Category Page",
          style: TextStyle(fontSize: 16.sp),
        ),
      ),
      body: Center(
        child: Text(
          "Category Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
