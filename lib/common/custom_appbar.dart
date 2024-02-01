import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 110.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      margin: EdgeInsets.only(top: 20.h),
      color: kOffWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundColor: kSecondary,
            backgroundImage: NetworkImage(
                "https://www.profilebakery.com/wp-content/uploads/2023/03/AI-Profile-Picture.jpg"),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: "Deliver to",
                  style: appStyle(
                    13,
                    kSecondary,
                    FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width * 0.65,
                  child: Text(
                    "14867 21st Street Ave N, Plymouth, MN 554789",
                    overflow: TextOverflow.ellipsis,
                    style: appStyle(
                      11,
                      kGrayLight,
                      FontWeight.normal,
                    ),
                  ),
                ),
                Text(
                  "*",
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
