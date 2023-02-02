import 'dart:core';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:toy_box/dashboard.dart';
import 'package:toy_box/login.dart';
import 'package:toy_box/settings.dart';
import 'package:toy_box/styles.dart';

void main() {
  runApp(const ToyBoxApp());
}

class ToyBoxApp extends StatelessWidget {
  const ToyBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: applicationTitle,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _isLoggedIn;

  Future<void> updateLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey('isLoggedIn')) {
      _isLoggedIn = prefs.getBool('isLoggedIn')!;
    } else {
      prefs.setBool('isLoggedIn', false);
      _isLoggedIn = false;
    }
  }

  @override
  void initState() {
    updateLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isLoggedIn ?? false
          ? AppBar(
              title: const Text('ToyBox', style: Styles.applicationTitleTextStyle),
            )
          : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _isLoggedIn ?? false ? const [DashboardView()] : const [LoginView()],
        ),
      ),
    );
  }
}
