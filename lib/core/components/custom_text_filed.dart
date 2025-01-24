import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/assets_manager.dart';
import '../utils/color_mananger.dart';
import '../utils/styles_manager.dart';

class CustomTextFiled extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final BorderRadius borderRadius;

  const CustomTextFiled({
    super.key,
    required this.hintText,
    required this.borderRadius,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconConstraints: BoxConstraints(maxWidth: 50,maxHeight: 50),
        filled: true,
        fillColor: ColorManager.lightGrey.withOpacity(0.5),
        hintText: hintText,
        hintStyle: getMediumStyle(
            color: ColorManager.gray.withValues(alpha: 1),
            fontSize: 14.sp),
        hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(
            color: ColorManager.red,
          ),
        ),
      ),
      style: getMediumStyle(
        color: ColorManager.black,
        fontSize: 14.sp,
      ),
    );
  }
}
