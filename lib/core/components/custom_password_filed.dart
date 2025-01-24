import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        suffixIcon: widget.suffixIcon,
        suffixIconConstraints: BoxConstraints(maxWidth: 30, maxHeight: 30),
        hintStyle: getMediumStyle(
            color: ColorManager.secondaryPrimary.withValues(alpha: 0.4),
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
                    color: ColorManager.secondaryPrimary.withValues(alpha: 0.3),
                  )
                : const Icon(
                    Icons.visibility,
                    color: ColorManager.primary,
                  )),
        filled: true,
        fillColor: ColorManager.lightGrey.withValues(alpha: 0.5),
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
