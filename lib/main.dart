import 'dart:ui';

import 'package:episod1/core/utlis/color_constant.dart';
import 'package:flutter/material.dart';
import './presentation/landing_screen/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Episod 1',
      theme: ThemeData(
        primaryColor: colorWhite,
        textTheme: screenWidth < 500 ? textThemeSmall : textDefaultTheme,
        fontFamily: 'Montserrat',
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: colorDarkBlue),
      ),
      home: LandingScreen(),
    );
  }
}

/*class MyApp extends StatelessWidget {
  var tagList = ['tag1', 'tag2', 'tag3'];
  List<String> emptyList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () {
            // emptyList.addAll(tagList);
            for (var element in tagList) {
              emptyList.add(element);
            }
          },
          child: Text(
            tagList.map((e) => e.contains('tag1') ? 'Tag Find' : 'Tag Not found').toString()
          )
      ),
    );
  }
}*/
