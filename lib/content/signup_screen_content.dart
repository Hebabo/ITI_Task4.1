import 'package:flutter/material.dart';
import '../Widgets/app_strings.dart';
import '../Widgets/app_colors.dart';
import '../Widgets/forget_password_row.dart';

class SignupScreenContent extends StatelessWidget {
  const SignupScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.loginScreenWelcomeText),
        SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(
            labelText: AppStrings.loginScreenPhonenumberTextFiled,
            border: OutlineInputBorder(),
          ),
        ),

        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.loginScreenPasswordTextFiled,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),

        Align(
          alignment: Alignment.centerLeft,
          child: ForgetPasswordRow(
            firstWhiteText: AppStrings.loginScreenForgetPass,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(AppStrings.loginScreenLoginButton),
        ),

        Padding(
          padding: EdgeInsets.only(top: 15),
          child: ForgetPasswordRow(
            firstWhiteText: AppStrings.loginScreenCreateAccount,
            secoednBlcakText: AppStrings.loginScreenDontHaveAccount,
          ),
        ),
      ],
    );
  }
}
