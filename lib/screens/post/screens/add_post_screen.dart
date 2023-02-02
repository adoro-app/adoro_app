import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/choose_categories/cubit/choose_meme_categories_cubit.dart';
import 'package:socialv/main.dart';
import 'package:socialv/screens/dashboard_screen.dart';
import 'package:socialv/screens/post/cubit/createpost_cubit.dart';
import 'package:socialv/screens/profile/cubit/profile_cubit.dart';
import 'package:video_thumbnail_imageview/video_thumbnail_imageview.dart';
import '../../../auth/cubit/auth_cubit.dart';
import '../../../utils/app_constants.dart';
import '../../shop/components/list_tile_component.dart';

class AddPostScreen extends StatefulWidget {
  final String? component;
  final int? groupId;

  AddPostScreen({this.component, this.groupId});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  TextEditingController postContentTextEditController = TextEditingController();
  String? _selectedValue;
  String? _selectedCategoryId;
  @override
  void initState() {
    super.initState();
    context.read<ChooseMemeCategoriesCubit>().loadMemeCategories();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthCubit>().state.user;
    final border =
        Border(top: BorderSide(width: 0.2, color: Color(0xff6F7F92)));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(child: BlocBuilder<CreatepostCubit, CreatepostState>(
            builder: (context, state) {
          return state.maybeWhen(
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error) => Center(child: Text('Something went wrong!')),
            orElse: () {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.close, color: context.iconColor),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text('Share post',
                            style: secondaryTextStyle(
                              color: Color(0xff07142E),
                              size: 20,
                              weight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            )),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: BlocBuilder<CreatepostCubit, CreatepostState>(
                            builder: (context, state) {
                              return InkWell(
                                onTap: state.maybeWhen(
                                  orElse: () => null,
                                  selectFile: (selectedFile) =>
                                      selectedFile != null &&
                                              _selectedCategoryId != null
                                          ? () async {
                                              await context
                                                  .read<CreatepostCubit>()
                                                  .createPost(
                                                      file: selectedFile,
                                                      categoryId:
                                                          _selectedCategoryId!,
                                                      content:
                                                          postContentTextEditController
                                                              .text);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeScreen()));
                                            }
                                          : null,
                                ),
                                child: Container(
                                  width: 96,
                                  height: 30,
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
                                  child: Text(language.post,
                                      style: secondaryTextStyle(
                                        weight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      )),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: BlocBuilder<ProfileCubit, ProfileState>(
                        builder: (context, state) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 33,
                              backgroundImage: state.user?.image == null
                                  ? Image.asset(profile_img).image
                                  : NetworkImage(
                                      state.user!.image!,
                                    ),
                            ),
                            title: Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(user?.username ?? '',
                                    style: secondaryTextStyle(
                                      color: Color(0xff07142E),
                                      size: 20,
                                      weight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                    ))),
                            subtitle: Transform(
                              transform:
                                  Matrix4.translationValues(-10, -10, 0.0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: [
                                    BlocBuilder<ChooseMemeCategoriesCubit,
                                            ChooseMemeCategoriesState>(
                                        builder: (context, state) {
                                      return state.maybeWhen(
                                        orElse: () => SizedBox(),
                                        success:
                                            (categories, selectedCategories) {
                                          return DropdownButton(
                                              underline: SizedBox(),
                                              hint: Row(
                                                children: [
                                                  Image.asset(
                                                    ic_plus,
                                                    height: 18,
                                                  ),
                                                  SizedBox(width: 4),
                                                  Text(
                                                      _selectedValue ??
                                                          'Category',
                                                      style: secondaryTextStyle(
                                                        color:
                                                            Color(0xff07142E),
                                                        size: 14,
                                                        weight: FontWeight.w600,
                                                        fontFamily: 'Poppins',
                                                      )),
                                                ],
                                              ),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  _selectedValue = newValue;
                                                });
                                              },
                                              items: categories.map((category) {
                                                return DropdownMenuItem<String>(
                                                  onTap: () {
                                                    setState(() {
                                                      _selectedCategoryId =
                                                          category.id
                                                              .toString();
                                                    });
                                                  },
                                                  value: category.title,
                                                  child: Text(category.title),
                                                );
                                              }).toList());
                                        },
                                      );
                                    })
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        controller: postContentTextEditController,
                        autofocus: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'What  do you want to talk about?',
                          hintStyle: secondaryTextStyle(
                            color: Color(0xff6F7F92),
                            size: 14,
                            weight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    BlocBuilder<CreatepostCubit, CreatepostState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 2.8,
                                ),
                            selectFile: (selectedFile) {
                              return context
                                      .read<CreatepostCubit>()
                                      .isVideo(selectedFile!.path)
                                  ? VTImageView(
                                      assetPlaceHolder: selectedFile.path,
                                      videoUrl: selectedFile.path,
                                      width: 200.0,
                                      height: 200.0,
                                      errorBuilder: (context, error, stack) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 40),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: double.infinity,
                                          child: Center(
                                            child:
                                                Text(" Falied to load Image"),
                                          ),
                                        );
                                      },
                                    )
                                  : Column(
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8,
                                        ),
                                        Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                4,
                                            width: double.infinity,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 40),
                                            child: Image.file(
                                              selectedFile,
                                              fit: BoxFit.fill,
                                            )),
                                      ],
                                    );
                            });
                      },
                    ),
                    BlocBuilder<CreatepostCubit, CreatepostState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => Column(
                                  children: [
                                    InkWell(
                                      onTap: () => context
                                          .read<CreatepostCubit>()
                                          .openFileExplorer(FileType.image),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        decoration:
                                            BoxDecoration(border: border),
                                        child: ListTileComponent(
                                          dense: true,
                                          visualDensity:
                                              VisualDensity(vertical: -3),
                                          title: "Upload a photo",
                                          icon: ic_photo,
                                          translationValue: -24,
                                          color: Color(0xff6F7F92),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => context
                                          .read<CreatepostCubit>()
                                          .openFileExplorer(FileType.video),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        decoration:
                                            BoxDecoration(border: border),
                                        child: ListTileComponent(
                                          dense: true,
                                          visualDensity:
                                              VisualDensity(vertical: -3),
                                          title: "Upload a Video",
                                          icon: ic_video_,
                                          translationValue: -24,
                                          color: Color(0xff6F7F92),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => context
                                          .read<CreatepostCubit>()
                                          .openFileExplorer(FileType.custom),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        decoration:
                                            BoxDecoration(border: border),
                                        child: ListTileComponent(
                                          dense: true,
                                          visualDensity:
                                              VisualDensity(vertical: -3),
                                          title: "Upload a GIF",
                                          icon: ic_gif,
                                          translationValue: -24,
                                          color: Color(0xff6F7F92),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      decoration: BoxDecoration(border: border),
                                      child: ListTileComponent(
                                        dense: true,
                                        visualDensity:
                                            VisualDensity(vertical: -3),
                                        title: "choose a template",
                                        icon: ic_smile,
                                        translationValue: -24,
                                        color: Color(0xff6F7F92),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      decoration: BoxDecoration(border: border),
                                      child: ListTileComponent(
                                        dense: true,
                                        visualDensity:
                                            VisualDensity(vertical: -3),
                                        title: "Tag a friend",
                                        icon: ic_tag,
                                        translationValue: -24,
                                        color: Color(0xff6F7F92),
                                      ),
                                    ),
                                  ],
                                ));
                      },
                    ),
                  ],
                ),
              );
            },
          );
        })));
  }
}
