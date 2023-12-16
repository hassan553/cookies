import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/functions/check_orientation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final double? height;
  final Function(String? value)? onSaved;
  final FocusNode? focusNode;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final ToolbarOptions? toolbarOptions;
  final TextStyle? style;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String? Function(String? value)? validator;
  final String? initialValue;
  final bool? expands;
  final bool? readOnly;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final String? errorText;
  final BorderRadius? borderRadius;
  final String? labelText;
  final bool password;
  final Color? fillColor;

  const CustomTextField(
      {Key? key,
      this.height,
      this.onSaved,
      this.focusNode,
      this.onChanged,
      this.keyboardType,
      this.maxLength,
      this.maxLines,
      this.textInputAction,
      this.toolbarOptions,
      this.style,
      this.contentPadding,
      this.hintText,
      this.hintStyle,
      this.enabledBorder,
      this.focusedBorder,
      this.controller,
      this.validator,
      this.initialValue,
      this.expands,
      this.readOnly,
      this.inputFormatters,
      this.suffixIcon,
      this.prefixIcon,
      this.onTap,
      this.errorText,
      this.borderRadius,
      this.labelText,
      this.password = false,
      this.fillColor})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool password;

  @override
  void initState() {
    password = widget.password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.labelText != null)
          Row(
            children: [
              const SizedBox(width: 10),
              Text(widget.labelText!, style: context.f16500),
            ],
          ),
        if (widget.labelText != null) const SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: TextFormField(
            obscureText: password,
            onSaved: widget.onSaved,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLength,
            onTapOutside: (_) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            maxLines: password ? 1 : widget.maxLines,
            toolbarOptions: widget.toolbarOptions,
            textInputAction: widget.textInputAction,
            // style: style ?? TextStyle(color: AppColors.textColor, fontSize: 50.sp, height: 3.7.h),
            style: widget.style ?? context.f16500,
            controller: widget.controller,
            validator: widget.validator,
            initialValue: widget.initialValue,
            expands: widget.expands ?? false,
            readOnly: widget.readOnly ?? false,
            inputFormatters: widget.inputFormatters,
            onTap: widget.onTap,

            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              errorText: widget.errorText,
              errorStyle: context.f14400?.copyWith(color: Colors.redAccent),
              fillColor: widget.fillColor ?? AppColors.offWhite,
              filled: true,
              // suffix: widget.suffixIcon,
              suffixIcon: widget.password
                  ? IconButton(
                      icon: Icon(
                        password ? Icons.visibility : Icons.visibility_off,
                        color: AppColors.lightGrey,
                      ),
                      onPressed: () {
                        setState(() {
                          password = !password;
                        });
                      },
                    )
                  : widget.suffixIcon,
              isDense: false,
              counter: const SizedBox(),
              // labelText: widget.labelText,
              labelStyle: context.f16700
                  ?.copyWith(color: Colors.black.withOpacity(0.25)),
              floatingLabelStyle: context.f18600
                  ?.copyWith(color: Colors.black, letterSpacing: 1.2),
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(
                      horizontal: isPortrait(context) ? 20.w : 10.w,
                      vertical: isPortrait(context) ? 20.h : 30.h),
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  context.f14400?.copyWith(color: AppColors.lightGrey),
              // border: OutlineInputBorder(
              //     borderSide: const BorderSide(color: Color(0xFFE0E0DF)),
              //     borderRadius: borderRadius ?? BorderRadius.circular(10.0)
              // ),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: const BorderSide(color: Color(0xFFE0E0DF)),
              //     borderRadius: borderRadius ?? BorderRadius.circular(10.0)
              // ),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.redAccent),
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(16.0)),
              enabledBorder: widget.enabledBorder ??
                  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.fillColor ?? AppColors.offWhite),
                      borderRadius:
                          widget.borderRadius ?? BorderRadius.circular(16.0)),
              focusedBorder: widget.focusedBorder ??
                  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.fillColor ?? AppColors.offWhite),
                      borderRadius:
                          widget.borderRadius ?? BorderRadius.circular(16.0)),
            ),
          ),
        ),
      ],
    );
  }
}
