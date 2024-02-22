import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multivendorapp/multivendorapp/all_categories.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';
import 'package:multivendorapp/multivendorapp/controller/categoryController.dart';

import 'constants/uidata.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

List<Map<String, String>> categories = [
  {'image': 'assets/icons/rice.png', 'text': 'Rice'},
  {'image': 'assets/icons/pizza.png', 'text': 'Pizza'},
  {'image': 'assets/icons/leg.png', 'text': 'Chicken'},
  {'image': 'assets/icons/pasta.png', 'text': 'Pasta'},
  {'image': 'assets/icons/burger.png', 'text': 'Burger'},
  {'image': 'assets/icons/drink.png', 'text': 'Drinks'},
  {'image': 'assets/icons/application.png', 'text': 'More'},

  // Add more maps for different images and text
];

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (i) {
          var imagePath = categories[i]['image']; // Update this line
          var categoryText = categories[i]['text']; // Update this line
          return categoryWidget(
            controller: controller,
            imagePath: imagePath,
            categoryText: categoryText,
          );
        }),
      ),
    );
  }
}

class categoryWidget extends StatelessWidget {
  categoryWidget({
    super.key,
    required this.controller,
    required this.imagePath,
    required this.categoryText,
    this.category,
  });

  final CategoryController controller;
  final String? imagePath;
  final String? categoryText;
  var category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (controller.categoryValue == imagePath) {
            controller.updateCategory = '';
            controller.updateTitle = '';
          } else if (categoryText == 'More') {
            Get.to(() => AllCategories(),
                transition: Transition.fadeIn,
                duration: Duration(milliseconds: 900));
          } else {
            controller.updateCategory = imagePath!;
            controller.updateTitle = categoryText!;
          }
        },
        child: Obx(
          () => Container(
            margin: EdgeInsets.only(right: 7.w),
            padding: EdgeInsets.only(top: 9.h),
            width: width * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                  color: controller.categoryValue == imagePath
                      ? kSecendory
                      : kOffWhite,
                  width: .5.w),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 27.h,
                  child: Image.asset(
                    imagePath!, // This should be a string path
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  categoryText!,
                  style: TextStyle(
                      color: kDark,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ));
  }
}
