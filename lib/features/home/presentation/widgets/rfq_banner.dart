import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class RfqBanner extends StatelessWidget {
  final String banner;
  const RfqBanner({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(banner),
        ),
      ),
    );
  }
}
