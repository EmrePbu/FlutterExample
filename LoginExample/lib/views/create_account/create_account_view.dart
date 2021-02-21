import 'package:LoginExample/widgets/primary_button/primary_button_widget.dart';
import 'package:LoginExample/widgets/textbox/texbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Spacer(flex: 3),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, '/sign_in'),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: SvgPicture.asset(
                    'assets/icons/icon-close.svg',
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
            Text(
              'Create Account',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: Theme.of(context).textTheme.headline4.fontSize,
                fontWeight: Theme.of(context).textTheme.bodyText1.fontWeight,
              ),
            ),
            Spacer(flex: 3),
            TextBox(assetName: 'assets/icons/icon-account.svg', hintText: 'Full Name'),
            Spacer(flex: 1),
            TextBox(assetName: 'assets/icons/icon-mail.svg', hintText: 'Email'),
            Spacer(flex: 1),
            TextBox(assetName: 'assets/icons/icon-padlock.svg', hintText: 'Password'),
            Spacer(flex: 4),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, '/sign_in'),
              child: PrimaryButton(text: 'CREATE ACCOUNT'),
            ),
            Spacer(flex: 1),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, '/sign_in'),
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
