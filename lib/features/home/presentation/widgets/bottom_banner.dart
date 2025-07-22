import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/widgets/chached_network_image.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';

class BottomBanner extends StatelessWidget {
  final BannerEntity banner;

  const BottomBanner({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: NetworkImageWidget(height: 160.h, url: banner.image),
    );
  }
}
