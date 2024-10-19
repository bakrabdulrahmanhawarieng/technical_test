import 'package:flutter/material.dart';
import 'package:technical_test/core/constants/app_colors.dart';
import 'package:technical_test/core/constants/app_paddings.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String? hint;
  final TextEditingController controller;
  final bool? obecureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  const CustomTextField(
      {super.key,
      required this.label,
      this.hint = "",
      this.obecureText = false,
      required this.controller,
      this.suffixIcon,
      this.validator,
      this.textInputType,
      this.textInputAction});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal,
      child: TextFormField(
          style: Theme.of(context).textTheme.bodyMedium,
          controller: widget.controller,
          autofocus: true,
          autocorrect: false,
          obscureText: widget.obecureText ?? false,
          validator: widget.validator,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              label: Text(
                widget.label,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              hintText: widget.hint,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor)))),
    );
  }
}
