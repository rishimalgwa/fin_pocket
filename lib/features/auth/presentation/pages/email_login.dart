import 'package:fin_pocket/comman/constants.dart';
import 'package:fin_pocket/comman/styles.dart';
import 'package:fin_pocket/comman/theme.dart';
import 'package:fin_pocket/comman/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({Key? key}) : super(key: key);

  @override
  _EmailLoginPageState createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
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
                SizedBox(height: 40.h, child: SvgPicture.asset(financesPath)),
                Text(
                  'Login',
                  style: appBarTextStyle.copyWith(fontSize: 36),
                ),
                SizedBox(
                  height: 3.h,
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
              text: 'Login',
              onPressed: () {},
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have account? ',
                  style: labelTextStyle.copyWith(fontSize: 15, color: grey),
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Text(
                    'Signup',
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
