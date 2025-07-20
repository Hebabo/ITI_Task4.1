import 'package:flutter/material.dart';
import 'package:iti2/Widgets/app_colors.dart';
import '../Widgets/app_strings.dart';
import '../Widgets/app_font_size.dart';
import '../Widgets/forget_password_row.dart';
import '../Widgets/text_field.dart';

class LoginScreenConent extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onLoginPressed;
  const LoginScreenConent({
    super.key,
    required this.height,
    required this.width,
    required this.onLoginPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: height * 0.02,
        children: [
          Text(
            AppStrings.loginScreenWelcomeText,
            style: TextStyle(
              fontSize: AppFontSize.extraLarge1,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppTextField(
            textContent: AppStrings.loginScreenPhonenumberTextFiled,
            prefixIcon: Icon(Icons.phone),
          ),
          AppTextField(
            textContent: AppStrings.loginScreenPasswordTextFiled,
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility_off),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ForgetPasswordRow(
              firstWhiteText: AppStrings.loginScreenForgetPass,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width * 0.8, height * 0.07),
              backgroundColor: AppColors.lightmainColor,
              foregroundColor: AppColors.mainColor,
              textStyle: TextStyle(
                fontSize: AppFontSize.large,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: onLoginPressed,
            child: Text(AppStrings.loginScreenLoginButton),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: ForgetPasswordRow(
              firstWhiteText: AppStrings.loginScreenDontHaveAccount,
              secoednBlcakText: AppStrings.loginScreenCreateAccount,
            ),
          ),
        ],
      ),
    );
  }
}
