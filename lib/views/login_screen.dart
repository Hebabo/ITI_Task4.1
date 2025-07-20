import 'package:flutter/material.dart';
import 'package:iti2/content/otp_screen_content.dart';
import '../Widgets/app_colors.dart';
import '../content/login_screen_conent.dart'; // Login form content

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showOtp = false;

  void switchToOtp() {
    setState(() {
      showOtp = true;
    });
  }

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
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: showOtp
              ? OtpContent(width)
              : LoginScreenConent(
                  height: height,
                  width: width,
                  onLoginPressed: switchToOtp, // trigger OTP switch
                ),
        ),
      ),
    );
  }
}
