import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../auth/cubit/auth_cubit.dart';
import '../../../utils/app_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthCubit>().state.user;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: context.width() / 2,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff00FFFF),
                  Color(0xffFFC0CB),
                  Color(0xffFFFF00),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff00FFFF),
                        Color(0xffFFC0CB),
                        Color(0xffFFFF00),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(60)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 44,
                          backgroundImage: user?.image == null
                              ? AssetImage(profile_img)
                              : Image.network(user!.image!) as ImageProvider,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12, left: 12),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: EditProfileButton(),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff00FFFF),
                        Color(0xffFFC0CB),
                        Color(0xffFFFF00),
                      ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                      borderRadius: BorderRadius.circular(80)),
                  child: Text('Update Profile',
                      style: secondaryTextStyle(
                          weight: FontWeight.w600, color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: EditProfileButton(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
              height: context.height() / 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: context.height() / 16, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user?.username ?? '',
                        style: secondaryTextStyle(weight: FontWeight.w600)),
                    Divider(),
                    Text(user?.mobileNo.toString() ?? '',
                        style: secondaryTextStyle(weight: FontWeight.w600)),
                    Divider(),
                    Text(user?.bankName ?? '',
                        style: secondaryTextStyle(weight: FontWeight.w600)),
                    Divider(),
                    Text(user?.beneficiaryName ?? '',
                        style: secondaryTextStyle(weight: FontWeight.w600)),
                    Divider(),
                    Text(user?.accountNumber ?? '',
                        style: secondaryTextStyle(weight: FontWeight.w600)),
                    Divider(),
                    Text(user?.ifscCode ?? '',
                        style: secondaryTextStyle(weight: FontWeight.w600)),
                    Divider()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(ic_edit_),
      width: 27,
      height: 27,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff00FFFF),
            Color(0xffFFC0CB),
            Color(0xffFFFF00),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(60)),
    );
  }
}
