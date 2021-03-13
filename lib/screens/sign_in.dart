import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:flutter_app_son/config/palette.dart';
import 'package:flutter_app_son/screens/decoration_functions.dart';
import 'package:flutter_app_son/screens/sign_in_up_bar.dart';
import 'package:flutter_app_son/screens/title.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key, @required this.onRegisterClicked}) : super(key: key);
  final VoidCallback onRegisterClicked;
  @override
  Widget build(BuildContext context) {
    final bool isSubmitting = context.isSubmitting();
    return SignInForm(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: LoginTitle(
                  title: 'Hoşgeldiniz',
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: TextFormField(
                      decoration: signInInputDecoration(hintText: 'Email'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: TextFormField(
                      obscureText: true,
                      decoration: signInInputDecoration(hintText: 'Şifre'),
                    ),
                  ),
                  SignInBar(
                    isLoading: isSubmitting,
                    label: 'Giriş Yap',
                    onPressed: () {
                      Navigator.pushNamed(context, "/anasayfa");
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        onRegisterClicked?.call();
                      },
                      child: const Text(
                        'Kayıt Ol',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Palette.purple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
