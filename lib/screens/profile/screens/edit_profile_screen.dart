import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/screens/profile/cubit/profile_cubit.dart';

import '../../../auth/cubit/auth_cubit.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/success_error_flash.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProfileCubit>().getUserDetails();
    final user = context.read<AuthCubit>().state.user;
    nameController.text = user?.username ?? "";
    userNameController.text = user?.username ?? "";
    mailIdController.text =
        user?.email != null || user?.email == '' ? "" : user!.email;
    bankNameController.text = user?.bankName ?? "";
    benificiaryNameController.text = user?.beneficiaryName ?? "";
    accountNoController.text = user?.accountNumber ?? "";
    ifscController.text = user?.ifscCode ?? "";
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController mailIdController = TextEditingController();

  TextEditingController bankNameController = TextEditingController();

  TextEditingController benificiaryNameController = TextEditingController();

  TextEditingController accountNoController = TextEditingController();

  TextEditingController ifscController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: BlocListener<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state.successOrFailure != null) {
            return state.successOrFailure!.fold(
              (error) => showErrorFlash(context, error.toString()),
              (success) {
                showSuccessFlash(
                  context,
                  'Profile updated successfully',
                );
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.pop(context);
                });
              },
            );
          }
        },
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return Column(
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
                        width: 96,
                        height: 96,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: Align(
                                  alignment: Alignment.center,
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 12, left: 12),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                    onTap: () {
                                      context
                                          .read<ProfileCubit>()
                                          .openFileExplorer();
                                    },
                                    child: EditProfileButton()),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (state.selectedImage != null) {
                            context
                                .read<ProfileCubit>()
                                .updateUserProfile(file: state.selectedImage!);
                          }
                          // context.read<ProfileCubit>().updateUserInfo(
                          //     mailId: mailIdController.text,
                          //     fullName: fullNameController.text,
                          //     userId: user!.id,
                          //     mobileNumber: int.parse(user.mobileNo),
                          //     userName: userNameController.text,
                          //     bankName: bankNameController.text,
                          //     beneficiaryName: benificiaryNameController.text,
                          //     accountNumber: accountNoController.text,
                          //     ifscCode: ifscController.text);
                        },
                        child: Container(
                          width: 140,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff00FFFF),
                                    Color(0xffFFC0CB),
                                    Color(0xffFFFF00),
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight),
                              borderRadius: BorderRadius.circular(80)),
                          child: Text('Update Profile',
                              style: secondaryTextStyle(
                                  weight: FontWeight.w600,
                                  color: Colors.white)),
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextField(
                            controller: fullNameController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'Full Name',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          AppTextField(
                            controller: userNameController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'Username',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          AppTextField(
                            controller: mailIdController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'mail id',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          AppTextField(
                            controller: bankNameController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'Bank Name',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          AppTextField(
                            controller: benificiaryNameController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'Beneficiary Name',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          AppTextField(
                            controller: accountNoController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'Account Number',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          AppTextField(
                            controller: ifscController,
                            textFieldType: TextFieldType.PHONE,
                            textStyle: secondaryTextStyle(
                              color: Color(0xff6F7F92).withOpacity(0.5),
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            decoration: inputDecoration(
                              context,
                              hint: 'IFSC Code',
                              hintStyle: secondaryTextStyle(
                                color: Color(0xff6F7F92).withOpacity(0.5),
                                weight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          30.height
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
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
