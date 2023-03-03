import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/themes/colors_maneger.dart';

class LocationBox extends StatelessWidget {
  final String text;

  const LocationBox(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0.h,
      width: 95.0.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bColor),
        color: AppColors.wColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0.r),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.0.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.tColor,
          ),
        ),
      ),
    );
  }
}
