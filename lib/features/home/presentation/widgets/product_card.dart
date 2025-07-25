import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/constants.dart';
import 'package:webcastle/core/widgets/chached_network_image.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class PerfumeProductCard extends StatefulWidget {
  final ProductEntity product;
  final Function(ProductEntity)? onChanged; // To notify parent if needed

  const PerfumeProductCard({
    super.key,
    required this.product,
    this.onChanged,
  });

  @override
  State<PerfumeProductCard> createState() => _PerfumeProductCardState();
}

class _PerfumeProductCardState extends State<PerfumeProductCard> {
  late ProductEntity product;

  @override
  void initState() {
    super.initState();
    product = widget.product;
  }

  void _updateProduct(ProductEntity updated) {
    setState(() => product = updated);
    widget.onChanged?.call(updated); // Notify parent if needed
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.borderGrey),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(25),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (product.offer.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.textLight.withAlpha(25),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      product.offer,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                GestureDetector(
                  onTap: () => _updateProduct(product.copyWith(isFavorite: !product.isFavorite)),
                  child: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: product.isFavorite ? AppColors.primary : Colors.black,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),

          // Product Info Section
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: NetworkImageWidget(
                      height: 120.h,
                      width: 150.w,
                      url: product.image,
                    ),
                  ),

                  const Spacer(),

                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 6.h),

                  Text(
                    'AED${product.actualPrice}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey[600],
                      decorationColor: Colors.grey[600],
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 14.sp),
                      children: [
                        TextSpan(
                          text: AppStrings.aed,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: product.price,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' ${AppStrings.perDozen}',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: const Text(
                          AppStrings.rfq,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),

                      Expanded(
                        child: product.count == 0
                            ? GestureDetector(
                                onTap: () => _updateProduct(product.copyWith(count: 1)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      AppStrings.addToCart,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (product.count > 0) {
                                          _updateProduct(product.copyWith(count: product.count - 1));
                                        }
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Icon(Icons.remove, color: Colors.white, size: 16),
                                      ),
                                    ),
                                    Text(
                                      product.count.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => _updateProduct(product.copyWith(count: product.count + 1)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Icon(Icons.add, color: Colors.white, size: 16),
                                      ),
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
          ),
        ],
      ),
    );
  }
}
