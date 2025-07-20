import 'package:flutter/material.dart';
import '../Widgets/app_colors.dart';
import '../content/login_screen_conent.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: height * 0.7,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: LoginScreenConent(height: height,width: width),
        ),
      ),
    );
  }
}
