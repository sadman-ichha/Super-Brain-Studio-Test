import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_test/core/utils/themes/colors_maneger.dart';

boxWidget(String text) {
  return Column(
    children: [
      Container(
        height: 55.0.h,
        width: 55.0.w,
        decoration: BoxDecoration(
          color: AppColors.bColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      SizedBox(height: 3.0.h),
      Text(
        text,
        style: const TextStyle(color: AppColors.tColor),
      ),
    ],
  );
}
