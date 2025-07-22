import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/constants.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';
import 'package:webcastle/features/home/presentation/widgets/product_card.dart';

class NewArrivals extends StatelessWidget {
  final List<ProductEntity> products;

  const NewArrivals({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.newArrivals,
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
        Container(
          margin: EdgeInsets.all(10.w),
          height: 350.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 20),
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
