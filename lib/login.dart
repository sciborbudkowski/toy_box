import 'package:flutter/material.dart';
import 'package:toy_box/styles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.only(top: 55),
              //color: Colors.amber,
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
                          'To keep connected with us please login with your credentials.',
                          style: Styles.defaultTextStyle,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          TextFormField(
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
                          TextField(
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
                                onPressed: () {},
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
                            onPressed: () {},
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(bottom: 15),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text('Sign up for a new account', style: Styles.linkTextStyle),
                            onPressed: () {},
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
                  )
                ],
              )),
        )
      ],
    );
  }
}
