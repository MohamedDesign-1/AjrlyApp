import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_manager.dart';
import '../utils/color_mananger.dart';
import '../utils/styles_manager.dart';

class CustomPasswordFiled extends StatefulWidget {
  final String? hintText;
  bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final BorderRadius borderRadius;

  CustomPasswordFiled({
    super.key,
    required this.hintText,
    required this.borderRadius,
    this.prefixIcon,
    this.obscureText = true,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.controller,
    this.suffixIcon,
  });

  @override
  State<CustomPasswordFiled> createState() => _CustomPasswordFiledState();
}

class _CustomPasswordFiledState extends State<CustomPasswordFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            SvgAssets.lock,
            height: 24.h,
            width: 24.w,
          ),
        ),
        suffixIconConstraints: BoxConstraints(maxWidth: 50, maxHeight: 50),
        hintStyle: getMediumStyle(
            color: ColorManager.gray.withValues(alpha: 1),
            fontSize: 14.sp),
        prefixIcon: IconButton(
            onPressed: () {
              setState(() {
                widget.obscureText = !widget.obscureText;
              });
            },
            icon: widget.obscureText
                ? Icon(
                    Icons.visibility_off,
                    color: ColorManager.lightGrey.withValues(alpha: 1),
                  )
                : const Icon(
                    Icons.visibility,
                    color: ColorManager.primary,
                  )),
        filled: true,
        fillColor: ColorManager.lightGrey.withValues(alpha: 0.3),
        hintText: widget.hintText,
        hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder(
          borderRadius: widget.borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
          borderSide: const BorderSide(
            color: ColorManager.red,
          ),
        ),
      ),
    );
  }
}
