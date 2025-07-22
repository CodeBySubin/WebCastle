import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webcastle/core/constants/app_colors.dart';
import 'package:webcastle/core/constants/app_icons.dart';
import 'package:webcastle/core/constants/app_strings.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppStrings.welcome,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: ' James!',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppIcons.bell,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(25.r),
                      border: Border.all(color: const Color(0xffEDEDED)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: AppStrings.search,
                        hintStyle: Theme.of(context).textTheme.titleMedium!
                            .copyWith(color: Colors.grey[500]),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: SvgPicture.asset(
                            AppIcons.search,
                            width: 20.w,
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 12.h,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                SizedBox(
                  height: 48.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppStrings.scanHere,
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(color: AppColors.background),
                        ),
                        SizedBox(width: 8.w),
                        Image.asset(
                          "assets/icons/barcode.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
