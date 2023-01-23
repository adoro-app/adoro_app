import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/screens/dashboard_screen.dart';
import 'package:socialv/screens/home/cubit/home_cubit.dart';

import '../../../service_locator.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: Image.asset('assets/icons/ic_verified_user.png')),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => HomeCubit(apiService: sl()),
                            child: DashboardScreen(),
                          )));
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
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
