import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/themes/colors_maneger.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Function onAction;

  const CustomButton(this.buttonName, this.onAction, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onAction();
        },
        child: Container(
          height: 60.0.h,
          width: 301.0.w,
          decoration: BoxDecoration(
            color: AppColors.btColor,
            borderRadius: BorderRadius.all(
              Radius.circular(14.0.r),
            ),
          ),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.wColor,
              ),
            ),
          ),
        ));
  }
}
