import 'dart:async';

import 'package:fin_pocket/comman/theme.dart';
import 'package:fin_pocket/features/auth/presentation/pages/email_signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'features/dashboard/presentation/pages/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => Get.to(() => const EmailSignupPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Fin-Pocket',
              style: TextStyle(fontSize: 40, color: buttonGreen),
            )
          ],
        ),
      ),
    );
  }
}
