import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';
import 'package:socialv/auth/cubit/auth_cubit.dart';
import 'package:socialv/auth/cubit/otp_verification_cubit.dart';
import 'package:socialv/service_locator.dart';

class OtpScreen extends StatefulWidget {
  final String mobileNo;

  OtpScreen({
    super.key,
    required this.mobileNo,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

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
    return BlocListener<AuthCubit, AuthState>(
      bloc: sl(),
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (error, _) {
            error.maybeWhen(
              orElse: () {},
              wrongOTP: (message) {
                toast(message);
              },
            );
          },
        );
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              200.height,
              Text('OTP Verification',
                  style: boldTextStyle(
                    size: 20,
                    weight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  )).paddingSymmetric(horizontal: 16),
              8.height,
              Text('We have sent a 6 digit code to your mobile no.',
                  style: secondaryTextStyle(
                    weight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  )).paddingSymmetric(horizontal: 16),
              32.height,
              Pinput(
                controller: _otpController,
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
                            fontFamily: 'Poppins',
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
                                sl.get<AuthCubit>().login(widget.mobileNo);
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
                onTap: () {
                  sl
                      .get<AuthCubit>()
                      .verifyOTP(widget.mobileNo, _otpController.text.trim());
                }, // Add your button action here
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
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              50.height,
            ],
          ),
        ),
      ),
    );
  }
}
