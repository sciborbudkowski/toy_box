import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:toy_box/styles.dart';
import 'package:toy_box/modals/register_new_user.dart';
import 'package:toy_box/modals/forgot_password.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    var loginForm = GlobalKey<FormState>();
    var emailRegx = RegExp('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+\$');

    return Stack(
      children: [
        const Expanded(
          child: Positioned(
            bottom: 0,
            child: Image(image: AssetImage('assets/images/curve.png')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50, left: 50),
          child: Container(
              padding: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        width: 150,
                        height: 150,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Login',
                        style: Styles.headTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Expanded(
                        child: Text(
                          'To keep connected with us please login using your credentials.',
                          style: Styles.defaultTextStyle,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: loginForm,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            TextFormField(
                              validator: (inputValue) {
                                if (inputValue != null && (inputValue.isEmpty || !emailRegx.hasMatch(inputValue))) {
                                  return 'Please enter valid email address.';
                                }
                                return null;
                              },
                              style: Styles.inputTextStyle,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                                focusColor: Colors.black,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  gapPadding: 0,
                                ),
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: 'email address',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              validator: (inputValue) {
                                if (inputValue != null && inputValue.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                return null;
                              },
                              style: Styles.inputTextStyle,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  gapPadding: 0,
                                ),
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: 'password',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                              obscuringCharacter: '*',
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              height: 35.0,
                              child: OutlinedButton(
                                  onPressed: () {
                                    if (loginForm.currentState != null && loginForm.currentState!.validate()) {
                                      // go to next view
                                    }
                                  },
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Styles.secondaryButtonBackgroundColor,
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: Styles.secondaryButtonTextStyle,
                                  )),
                            ),
                            const SizedBox(height: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(top: 5, bottom: 5),
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text('Forgot password?', style: Styles.linkTextStyle),
                              onPressed: () {
                                showCupertinoModalBottomSheet(
                                    expand: true,
                                    context: context,
                                    builder: (context) => const ForgotPasswordModalView());
                              },
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(bottom: 15),
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text('Sign up for a new account', style: Styles.linkTextStyle),
                              onPressed: () {
                                showCupertinoModalBottomSheet(
                                    expand: true,
                                    context: context,
                                    builder: (context) => const RegisterNewUserModalView());
                              },
                            ),
                            const SizedBox(
                                width: double.infinity,
                                child: Text('Or login with other providers:', style: Styles.defaultTextStyle)),
                            SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Styles.facebookButtonBackgroundColor,
                                  ),
                                  child: const Text('Continue with Facebook', style: Styles.facebookButtonTextStyle),
                                )),
                            SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Styles.twitterButtonBackgroundColor,
                                  ),
                                  child: const Text('Continue with Twitter', style: Styles.twitterButtonTextStyle),
                                )),
                            SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Styles.appleButtonBackgroundColor,
                                  ),
                                  child: const Text('Continue with Apple', style: Styles.appleButtonTextStyle),
                                )),
                            SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Styles.googleButtonBackgroundColor,
                                  ),
                                  child: const Text('Continue with Google', style: Styles.googleButtonTextStyle),
                                )),
                          ],
                        )),
                      ],
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
