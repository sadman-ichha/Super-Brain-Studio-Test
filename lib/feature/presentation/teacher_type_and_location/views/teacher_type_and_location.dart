import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_test/core/utils/themes/colors_maneger.dart';
import 'package:intern_test/feature/presentation/teacher_type_and_location/components/box_location.dart';
import 'package:intern_test/feature/presentation/teacher_type_and_location/components/box_widgets.dart';
import 'package:intern_test/feature/presentation/teacher_type_and_location/components/custom_button.dart';

class TeacherTypeAndLocation extends StatelessWidget {
  const TeacherTypeAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.tColor,
                          )),
                      Text(
                        "কি ধরনের শিক্ষক \nখুজছেন?",
                        style: TextStyle(
                          fontSize: 26.0.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.tColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      boxWidget("Home"),
                      boxWidget("Online"),
                      boxWidget("Group"),
                      boxWidget("Commercial"),
                    ],
                  ),
                ],
              ),
            ),

            /////////////
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      "এলাকা বাছাই করুন",
                      style: TextStyle(
                        fontSize: 26.0.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.tColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      LocationBox("ঢাকা"),
                      LocationBox("বরিশাল"),
                      LocationBox("চট্রগ্রাম"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      LocationBox("গাজীপুর"),
                      LocationBox("কুমিল্লা"),
                      LocationBox("খুলনা"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      LocationBox("ময়মনসিংহ"),
                      LocationBox("নারায়নগঞ্জ"),
                      LocationBox("নারায়নগঞ্জ"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      LocationBox("রংপুর"),
                      LocationBox("সাভার"),
                      LocationBox("সিলেট"),
                    ],
                  ),
                  CustomButton("পরবর্তী ধাপ", () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
