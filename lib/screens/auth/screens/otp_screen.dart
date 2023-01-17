import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';
import 'package:socialv/auth/cubit/auth_cubit.dart';
import 'package:socialv/auth/cubit/otp_verification_cubit.dart';
import 'package:socialv/service_locator.dart';

class OtpScreen extends StatelessWidget {
  final String mobileNo;

  const OtpScreen({
    super.key,
    required this.mobileNo,
  });

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
              length: 6,
              validator: (s) {
                return s?.length == 6 ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            16.height,
            BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
              builder: (context, state) {
                return state.secondsLeft > 0
                    ? Text(
                        '00:${state.secondsLeft.toString().padLeft(2, '0')}',
                        style: boldTextStyle(
                          size: 14,
                          color: Colors.green,
                        ),
                      )
                    : const SizedBox();
              },
            ).paddingSymmetric(horizontal: 16),
            16.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive the OTP?", style: secondaryTextStyle()),
                4.width,
                BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
                  builder: (context, state) {
                    return TextButton(
                      onPressed: state.secondsLeft == 0
                          ? () {
                              sl.get<AuthCubit>().login(mobileNo);
                            }
                          : null,
                      style: TextButton.styleFrom(
                        textStyle: secondaryTextStyle(
                          color: context.primaryColor,
                        ),
                      ),
                      child: Text(
                        'RESEND OTP',
                      ),
                    );
                  },
                )
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
                  'VERIFY NOW',
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
