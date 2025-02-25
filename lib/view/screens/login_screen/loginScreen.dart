import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/constant/app-images.dart';
import 'package:uitask/constant/app_icons.dart';
import 'package:uitask/widget/custom_button/customButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),

              Image.asset(AppImages.mainImage, width: 120.w),

              SizedBox(height: 15.h),
              CustomButton(
                color: Color(0xff4469A1),
                btnText: "Login With Phone",
                btnTextColor: Colors.white,
                btnIcon: AppIcons.callingIcon,
                btnIconColor: ColorFilter.mode(
                  Color(0xff4469A1),
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: 10.h),
              CustomButton(
                color: Color(0xff4469A1),
                btnText: "Login With Phone",
                btnTextColor: Colors.white,
                btnIcon: AppIcons.googleIcon,
                iconWidth: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
