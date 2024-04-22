import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.isPassword = false,
    required this.controller,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.hint,
    this.label,
    this.validator,
    this.textInputAction,
   
  });
  final bool isPassword;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final String? hint;
  final String? label;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      obscuringCharacter: '*',
      controller: controller,
      cursorColor: Colors.black,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
        labelText: label,
        enabledBorder: const OutlineInputBorder(),
        fillColor: Theme.of(context).inputDecorationTheme.fillColor,
        filled: Theme.of(context).inputDecorationTheme.filled,
      ),
    );
  }
}
