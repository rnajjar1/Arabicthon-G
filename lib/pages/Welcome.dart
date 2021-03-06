import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import '/helpers/colors.dart';
import '/widgets/Button.dart';
import 'package:flutter/gestures.dart';
import 'home.dart';
import 'signUp.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Expanded(child:  Positioned.fill(
              child: Image.asset('assets/images/splash.png', fit: BoxFit.cover),
            ))
,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(padding: EdgeInsets.fromLTRB(0, 250, 0, 0)),
                button(
                    text: "ابدأ اللعب",
                    textColor: Colors.white,
                    buttonColor: AppColors.BUTTON_COLOR,
                    action:  HomePage()),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'تسجيل الدخول',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp())),
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
