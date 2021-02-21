import 'package:LoginExample/widgets/primary_button/primary_button_widget.dart';
import 'package:LoginExample/widgets/textbox/texbox_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Spacer(flex: 4),
            Text(
              'Sign In',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: Theme.of(context).textTheme.headline4.fontSize,
                fontWeight: Theme.of(context).textTheme.bodyText1.fontWeight,
              ),
            ),
            Spacer(flex: 3),
            TextBox(
              hintText: 'Email',
              assetName: 'assets/icons/icon-mail.svg',
            ),
            Spacer(flex: 1),
            TextBox(assetName: 'assets/icons/icon-padlock.svg', hintText: 'Password'),
            Spacer(flex: 1),
            GestureDetector(
              onTap: () => print('Forgot password?'),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontWeight: Theme.of(context).textTheme.bodyText1.fontWeight,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ),
            ),
            Spacer(flex: 3),
            GestureDetector(
              // TODO Bu kısımda pushNamed is pushReplacementNamed ile değiştirmeyi unutma.
              onTap: () => Navigator.pushNamed(context, '/info'),
              child: PrimaryButton(text: 'SIGN IN'),
            ),
            Spacer(flex: 1),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, '/create_account'),
              child: Text(
                'CREATE ACCOUNT',
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
