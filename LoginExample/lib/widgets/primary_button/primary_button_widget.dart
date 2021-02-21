import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .86,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/icon-arrow-small.svg',
              color: Theme.of(context).textTheme.headline6.color,
            ),
            SizedBox(width: 10),
            Text(
              text == null ? 'null' : text,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline6.fontSize,
                color: Theme.of(context).textTheme.headline6.color,
                fontWeight: Theme.of(context).textTheme.headline6.fontWeight,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
