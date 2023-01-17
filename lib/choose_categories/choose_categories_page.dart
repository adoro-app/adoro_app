import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/utils/app_constants.dart';

class ChooseCategoriesPage extends StatefulWidget {
  const ChooseCategoriesPage({super.key});

  @override
  State<ChooseCategoriesPage> createState() => _ChooseCategoriesPageState();
}

class _ChooseCategoriesPageState extends State<ChooseCategoriesPage> {
  @override
  void initState() {
    super.initState();
    setStatusBarColorBasedOnTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.height,
            Text('Welcome to adoro', style: boldTextStyle(size: 24)),
            Text('Choose 5 or more meme categories',
                style: secondaryTextStyle(weight: FontWeight.w500)),
            24.height,
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.2,
                children: List.generate(
                  24,
                  (index) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('Savage',
                            style: boldTextStyle(
                              size: 12,
                              color: Colors.white,
                            )),
                      ).paddingBottom(4.0),
                      Icon(Icons.check),
                    ],
                  ),
                ),
              ),
            ),
            24.height,
            InkWell(
              onTap: null, // Add your button action here
              child: Container(
                width: context.width() - 32,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  // gradient: LinearGradient(colors: [
                  //   Color(0xff00FFFF),
                  //   Color(0xffFFC0CB),
                  //   Color(0xffFFFF00),
                  // ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'DONE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            24.height,
          ],
        ),
      )),
    );
  }
}
