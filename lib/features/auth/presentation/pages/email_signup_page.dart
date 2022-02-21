import 'package:fin_pocket/comman/constants.dart';
import 'package:fin_pocket/comman/styles.dart';
import 'package:fin_pocket/comman/theme.dart';
import 'package:fin_pocket/comman/widgets/buttons.dart';
import 'package:fin_pocket/features/auth/presentation/pages/email_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';

class EmailSignupPage extends StatefulWidget {
  const EmailSignupPage({Key? key}) : super(key: key);

  @override
  _EmailSignupPageState createState() => _EmailSignupPageState();
}

class _EmailSignupPageState extends State<EmailSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(builder: (context, orientation, deviceType) {
        return Padding(
          padding: EdgeInsets.all(2.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 40.h, child: SvgPicture.asset(analysisPath)),
                Text(
                  'Sign Up',
                  style: appBarTextStyle.copyWith(fontSize: 36),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Name',
                  style: labelTextStyle,
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  decoration: textfieldDecoration,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Email',
                  style: labelTextStyle,
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  decoration: textfieldDecoration,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Password',
                  style: labelTextStyle,
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  decoration: textfieldDecoration,
                  keyboardType: TextInputType.visiblePassword,
                )
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: Container(
        height: 12.h,
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              text: 'Signup',
              onPressed: () {},
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account? ',
                  style: labelTextStyle.copyWith(fontSize: 15, color: grey),
                ),
                GestureDetector(
                  onTap: () => Get.to(() => const EmailLoginPage()),
                  child: Text(
                    'Login',
                    style: labelTextStyle.copyWith(
                        fontSize: 15, color: buttonGreen),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
