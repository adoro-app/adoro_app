import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/screens/profile/cubit/profile_cubit.dart';

import '../../../auth/cubit/auth_cubit.dart';
import '../../../main.dart';
import '../../../service_locator.dart';
import '../../../utils/constants.dart';
import '../../../utils/images.dart';
import '../../dashboard_screen.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    context.read<ProfileCubit>().getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close, color: context.iconColor),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        title: Text('Profile',
            style: secondaryTextStyle(
              color: Color(0xff07142E),
              size: 20,
              weight: FontWeight.w600,
              fontFamily: 'Poppins',
            )),
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    child: Image.asset(
                      AppImages.profileBackgroundImage,
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.09,
                    ),
                    child: Center(
                      child: Container(
                          padding: EdgeInsets.all(3),
                          alignment: Alignment.center,
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: state.selectedImage != null
                                    ? FileImage(state.selectedImage!)
                                    : state.user?.image == null
                                        ? Image.asset(profile_img).image
                                        : NetworkImage(
                                            state.user!.image!,
                                          ),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              20.height,
              state.user?.beneficiaryName != null
                  ? Text(state.user!.beneficiaryName!,
                      style: secondaryTextStyle(
                        color: Color(0xff07142E),
                        size: 20,
                        weight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ))
                  : SizedBox(),
              Text('@${state.user?.username ?? ""}',
                  style: secondaryTextStyle(
                    size: 20,
                    weight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  )),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(language.posts,
                          style: secondaryTextStyle(
                            size: 12,
                            fontFamily: 'Poppins',
                          )),
                      4.height,
                      Text('1,286',
                          style: boldTextStyle(
                            size: 18,
                            fontFamily: 'Poppins',
                          )),
                    ],
                  ),
                  12.width,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(language.friends,
                          style: secondaryTextStyle(size: 12)),
                      4.height,
                      Text('2m',
                          style: boldTextStyle(
                            size: 18,
                            fontFamily: 'Poppins',
                          )),
                    ],
                  ),
                ],
              ),
              20.height,
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    )),
                child: Container(
                  width: context.width() - 48,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    'Edit Profile',
                    style: boldTextStyle(
                        fontFamily: 'Poppins',
                        weight: FontWeight.w600,
                        size: 16,
                        color: Color(0xff6F7F92)),
                  )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
