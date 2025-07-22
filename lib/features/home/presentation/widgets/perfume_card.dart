import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/app_strings.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class PerfumeShowcase extends StatelessWidget {
    final List<BannerEntity> banners;
  const PerfumeShowcase({super.key,required this.banners});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 25.w,
              child: PerfumeCard(image: banners[index].image),
            ),
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
      height: 400.h,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12.r),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
           image,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: TextButton(
          onPressed: () {},
          child: Text(
            AppStrings.shopNow,
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
              decorationColor: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
