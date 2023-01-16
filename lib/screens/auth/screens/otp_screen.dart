

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final defaultPinTheme = PinTheme(
      width: 50,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromRGBO(234, 239, 243, 1),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            200.height,
            Text('OTP Verification', style: boldTextStyle(size: 20))
                .paddingSymmetric(horizontal: 16),
            8.height,
            Text('We have sent a 4 digit code to your mobile no.',
                    style: secondaryTextStyle(weight: FontWeight.w500))
                .paddingSymmetric(horizontal: 16),
            32.height,
            Pinput(
              defaultPinTheme: defaultPinTheme,
              // focusedPinTheme: focusedPinTheme,
              // submittedPinTheme: submittedPinTheme,

              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            16.height,
            Text(
              '00:19',
              style: boldTextStyle(
                size: 14,
                color: Colors.green,
              ),
            ).paddingSymmetric(horizontal: 16),
            16.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive the OTP?", style: secondaryTextStyle()),
                4.width,
                Text(
                  'RESEND OTP',
                  style: secondaryTextStyle(
                    color: context.primaryColor,
                  ),
                ).onTap(() {},
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent)
              ],
            ),
            48.height,
            InkWell(
              onTap: () {}, // Add your button action here
              child: Container(
                width: context.width() - 32,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff00FFFF),
                    Color(0xffFFC0CB),
                    Color(0xffFFFF00),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  'GET OTP',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            50.height,
          ],
        ),
      ),
    );
  }
}