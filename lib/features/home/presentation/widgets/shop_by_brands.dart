import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/constants.dart';
import 'package:webcastle/core/widgets/chached_network_image.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class ShopByBrands extends StatelessWidget {
  final List<BrandEntity> brands;
  const ShopByBrands({super.key, required this.brands});

  @override
  Widget build(BuildContext context) {
    if (brands.isEmpty) {
      return SizedBox();
    } else {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.shopByBrands,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  AppStrings.viewAll,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 120.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brands.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: AppColors.borderGrey),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  child: NetworkImageWidget(
                    fit: BoxFit.contain,
                    url: brands[index].image,
                  ),
                );
              },
            ),
          ),
        ],
      );
    }
  }
}
