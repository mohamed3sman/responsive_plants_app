import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlantCareCustomWidget extends StatelessWidget {
  const PlantCareCustomWidget(
      {super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 21.r,
          backgroundColor: const Color(0xff1a6354),
          child: icon,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          text,
          style:
              TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14.sp),
        ),
      ],
    );
  }
}
