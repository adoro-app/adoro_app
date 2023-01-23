import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/screens/dashboard_screen.dart';

import '../../../utils/app_constants.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff00FFFF),
                  Color(0xffFFC0CB),
                  Color(0xffFFFF00),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(ic_verified_user)),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => DashboardScreen()));
            },
            child: Center(
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
                  'DONE',
                  style: boldTextStyle(
                      fontFamily: 'Poppins',
                      weight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
