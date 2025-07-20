import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextField extends StatelessWidget {
  final String? textContent;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  const AppTextField({super.key, this.textContent,this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: AppColors.whiteApp,
        filled: true,
        labelText: textContent,
        border: OutlineInputBorder(),
      ),
    );
  }
}
