import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle bold16 = const TextStyle( 
    fontSize: 16,
    fontWeight: AppFontWeight.bold,
    color: AppColors.black
  );
  static TextStyle bold12 = const TextStyle(
    fontSize: AppFontSize.s12,
    fontWeight: AppFontWeight.bold,
    
  );
  static TextStyle regularWhite12 = const TextStyle(
    fontSize: AppFontSize.s12,
    fontWeight: AppFontWeight.bold,
    color: AppColors.white
  );
  static TextStyle regularBlack12 = const TextStyle(
    fontSize: AppFontSize.s12,
    fontWeight: AppFontWeight.bold,
    color: AppColors.black
  );
}
class AppFontSize{
  static const double s12=12.0;
}

class AppFontWeight{
  static const FontWeight bold =FontWeight.w700;
  static const FontWeight semiBold =FontWeight.w600;
  static const FontWeight medium =FontWeight.w500;
}