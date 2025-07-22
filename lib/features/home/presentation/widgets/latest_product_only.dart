import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/constants.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';
import 'package:webcastle/features/home/presentation/widgets/product_card.dart';

class LatestProduct extends StatelessWidget {
  final List<ProductEntity> products;

  const LatestProduct({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.latestProduct,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
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
        Container(
          margin: EdgeInsets.only(left: 15.w),

          height: 313.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 15.w),
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                PerfumeProductCard(product: products[index]),
          ),
        ),
      ],
    );
  }
}
