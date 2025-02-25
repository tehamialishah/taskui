import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/constant/app_icons.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.btnText,
    required this.btnTextColor,
    required this.btnIcon,
    this.btnIconColor,
    this.iconWidth,
  });

  final String btnIcon;
  final ColorFilter? btnIconColor;
  final Color color;
  final Color btnTextColor;
  final String btnText;
  final double ? iconWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 6.h,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    btnIcon,
                    colorFilter: btnIconColor,
                    width: iconWidth,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                btnText,
                style: TextStyle(
                  color: btnTextColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
