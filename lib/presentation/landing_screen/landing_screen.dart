import 'package:episod1/core/utlis/color_constant.dart';
import 'package:episod1/core/utlis/sample_data.dart';
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
          decoration: BoxDecoration(border: Border.all(width: 1)),
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
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
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child:
                    Text('San Francisco', style: themeData.textTheme.headline1),
              ),
              const Padding(
                padding: sidePadding,
                child: Divider(
                  height: padding,
                  color: colorGrey,
                ),
              ),
              addVerticalSpace(10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                  '<\$220000',
                  'For Sale',
                  '3-4 Beds',
                  '>1000 sqft'
                ].map((element) => ChoiseOption(element)).toList()),
              ),
              addVerticalSpace(20.0),
              Expanded(
                child: Padding(
                  padding: sidePadding,
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return RealStateItem(itemData: sampleData[index]);
                    }),
                    itemCount: sampleData.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiseOption extends StatelessWidget {
  final String text;

  ChoiseOption(this.text);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: colorGrey.withAlpha(25),
          borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 20),
      margin: const EdgeInsets.only(left: 25.0),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class RealStateItem extends StatelessWidget {
  final dynamic itemData;

  const RealStateItem({Key? key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(itemData['image'])),
              const Positioned(
                top: 15,
                right: 15,
                height: 50,
                width: 50,
                child: BorderBox(
                  child: Icon(Icons.favorite_border, color: colorBlack),
                ),
              )
            ],
          ),
          addVerticalSpace(10),
          Row(
            children: [
              Text(itemData['amount'].toString(),style: themeData.textTheme.headline1,)
            ],
          )
        ],
      ),
    );
  }
}
