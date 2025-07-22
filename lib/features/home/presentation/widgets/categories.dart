import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/app_strings.dart';
import 'package:webcastle/core/widgets/chached_network_image.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class Categories extends StatelessWidget {
  final List<BrandEntity> categories;
  const Categories({super.key, required this.categories});

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
                AppStrings.ourCategories,
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
          height: 250.h,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 1.h,
              childAspectRatio: 1,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 80.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: ClipOval(
                      child: NetworkImageWidget(
                        url: categories[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    categories[index].name,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
