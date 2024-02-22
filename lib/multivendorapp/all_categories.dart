import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multivendorapp/multivendorapp/categoryList.dart';
import 'package:multivendorapp/multivendorapp/category_page.dart';
import 'package:multivendorapp/multivendorapp/constants/constant.dart';
import 'package:multivendorapp/multivendorapp/widgets/background_container.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key});

  @override
  Widget build(BuildContext context) {
    // Example categories list to avoid null issues for testing
    List<Map<String, String>> categories = [
      {'image': 'assets/icons/rice.png', 'text': 'Rice'},
      {'image': 'assets/icons/drink.png', 'text': 'Drinks'},
      {'image': 'assets/icons/leg.png', 'text': 'Chicken'},
      {'image': 'assets/icons/burger.png', 'text': 'Burger'},
      {'image': 'assets/icons/pasta.png', 'text': 'Pasta'},
      {'image': 'assets/icons/leg.png', 'text': 'Chicken'},
      {'image': 'assets/icons/burger.png', 'text': 'Burger'},
      {'image': 'assets/icons/pasta.png', 'text': 'Pasta'},
      {'image': 'assets/icons/application.png', 'text': 'More'},
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 16.sp),
        ),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var imagePath = categories[i]['image'] ?? '';
              var categoryText = categories[i]['text'] ?? '';
              return Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 100.w, // Set a specific width for the ListTile
                child: CategoryTile(
                  imagePath: imagePath,
                  categoryText: categoryText,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.imagePath,
    required this.categoryText,
    this.category,
  });

  final String imagePath;
  final String categoryText;
  var category;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => CategoryPage(),
            transition: Transition.fadeIn,
            duration: Duration(milliseconds: 900));
      },
      leading: CircleAvatar(
        radius: 15.r,
        backgroundColor: kGreyLight,
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(
        categoryText,
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        size: 15.r,
      ),
    );
  }
}
