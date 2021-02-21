import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
    this.hintText,
    @required this.assetName,
  }) : super(key: key);
  final String hintText;
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      alignment: Alignment.center,
      height: 60.0,
      decoration: new BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: Theme.of(context).textTheme.bodyText1.fontWeight),
          prefixIcon: SvgPicture.asset(assetName, fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}
