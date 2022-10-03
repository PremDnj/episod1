import 'package:episod1/core/utlis/color_constant.dart';
import 'package:episod1/core/utlis/widget_function.dart';
import 'package:episod1/widgets/common_border_box.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1)
          ),
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BorderBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.menu,
                        color: colorBlack,
                      ),
                    ),
                    BorderBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.settings,
                        color: colorBlack,
                      ),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text('City', style: themeData.textTheme.bodyText2),
              ),addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text('San Francisco', style: themeData.textTheme.headline1),
              ),
              const Padding(
                padding: sidePadding,
                child: Divider(
                  height: padding,
                  color: colorGrey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
