import 'package:flutter/material.dart';
import 'package:toy_box/styles.dart';

class RegisterNewUserModalView extends StatelessWidget {
  const RegisterNewUserModalView({super.key});

  @override
  Widget build(BuildContext context) {
    var registerForm = GlobalKey<FormState>();
    var emailRegx = RegExp('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+\$');

    return Material(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 50, left: 50),
        child: Column(
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
                  'Sign Up',
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
                    'To keep connected with us please create new account.',
                    style: Styles.defaultTextStyle,
                    softWrap: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Form(
              key: registerForm,
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
                          hintText: 'confirm password',
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
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Styles.secondaryButtonBackgroundColor,
                            ),
                            child: const Text(
                              'Sign me up!',
                              style: Styles.secondaryButtonTextStyle,
                            )),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Cancel', style: Styles.linkTextStyle),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
