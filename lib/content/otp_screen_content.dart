import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../Widgets/app_colors.dart';

Widget OtpContent(double width) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        const Text(
          "أدخل رمز التحقق OTP",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
        const Text(
          "لقد أرسلنا الكود الخاص بك إلى 010*****000.\nسينتهي هذا الكود في 00:30",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        Directionality(
          textDirection: TextDirection.ltr,
          child: OtpTextField(
            numberOfFields: 6,
            borderColor: Colors.white,
            focusedBorderColor: Colors.white,
            showFieldAsBox: true,
            fieldWidth: 45,
            borderRadius: BorderRadius.circular(8),
            textStyle: const TextStyle(color: Colors.black),
            onCodeChanged: (String code) {
              // optional: called when typing
            },
            onSubmit: (String verificationCode) {
              // called when user finishes typing
              print("OTP is: $verificationCode");
            },
          ),
        ),
        SizedBox(
          width: width * 0.6,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.whiteApp,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              // Confirm OTP logic
            },
            child: const Text("تأكيد", style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    ),
  );
}
