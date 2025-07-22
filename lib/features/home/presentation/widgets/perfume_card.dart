import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/app_strings.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class PerfumeShowcase extends StatelessWidget {
  final List<BannerEntity> banners;

  const PerfumeShowcase({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15.w, top: 15.h),
        itemCount: banners.length,
        separatorBuilder: (_, __) => SizedBox(width: 15.w),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 170.w,
            child: PerfumeCard(image: banners[index].image),
          );
        },
      ),
    );
  }
}

class PerfumeCard extends StatelessWidget {
  final String image;

  const PerfumeCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(image)),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.shopNow,
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
