import 'package:LoginExample/widgets/primary_button/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:xlive_switch/xlive_switch.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Swiper(
                itemBuilder: (context, index) {
                  return onBoard(context, index);
                },
                itemCount: 3,
                pagination: SwiperPagination(builder: SwiperPagination.dots),
                control: SwiperControl(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column onBoard(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        index == 0
            ? SvgPicture.asset('assets/images/first-graphic-onboarding.svg')
            : index == 1
                ? SvgPicture.asset('assets/images/second-graphic-onboarding.svg')
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: buttonList(context),
                  ),
        Spacer(flex: 2),
        Text(
          index == 0
              ? 'Quickly search and add\nhealthy foods to your cart'
              : index == 1
                  ? 'With one click you can add everyingredient for a recipe to your'
                  : '',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: Theme.of(context).textTheme.headline5.fontSize,
          ),
        ),
        Spacer(),
        index == 2
            ? Container(
                child: Text(
                  'Tailor your Recipes feed exactly\nhow you like it',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline6.fontSize,
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            : Container(),
        Spacer(),
        index == 2 ? PrimaryButton(text: 'GET STARTED') : Container(),
        Spacer(),
      ],
    );
  }

  Column buttonList(BuildContext context) {
    return Column(
      children: [
        lineSwitch(
          'All',
          XlivSwitch(
            value: isSwitched1,
            onChanged: (value) {
              setState(() {
                isSwitched1 = value;
                isSwitched2 = value;
                isSwitched3 = value;
                isSwitched4 = value;
                isSwitched5 = value;
                isSwitched6 = value;
              });
            },
          ),
        ),
        lineSwitch(
          'Vegan',
          XlivSwitch(
            value: isSwitched2,
            onChanged: (value) {
              setState(() {
                isSwitched2 = value;
              });
            },
          ),
        ),
        lineSwitch(
          'Vegetarian',
          XlivSwitch(
            value: isSwitched3,
            onChanged: (value) {
              setState(() {
                isSwitched3 = value;
              });
            },
          ),
        ),
        lineSwitch(
          'Paleo',
          XlivSwitch(
            value: isSwitched4,
            onChanged: (value) {
              setState(() {
                isSwitched4 = value;
              });
            },
          ),
        ),
        lineSwitch(
          'Keto',
          XlivSwitch(
            value: isSwitched5,
            onChanged: (value) {
              setState(() {
                isSwitched5 = value;
              });
            },
          ),
        ),
        lineSwitch(
          'Low Carb',
          XlivSwitch(
            value: isSwitched6,
            onChanged: (value) {
              setState(() {
                isSwitched6 = value;
              });
            },
          ),
        ),
      ],
    );
  }

  Row lineSwitch(String text, Widget widget) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headline6.fontSize,
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: FontWeight.w300,
          ),
        ),
        widget
      ],
    );
  }
}
