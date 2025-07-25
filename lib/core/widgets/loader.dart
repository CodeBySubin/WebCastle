import 'package:flutter/material.dart';
import 'package:webcastle/core/constants/app_colors.dart';

Widget loader() {
  return  Center(child: CircularProgressIndicator(color: AppColors.primary,));
}
