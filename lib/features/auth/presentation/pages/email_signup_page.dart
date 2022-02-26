import 'package:fin_pocket/comman/constants/assets_path.dart';
import 'package:fin_pocket/comman/theme/styles.dart';
import 'package:fin_pocket/comman/theme/theme.dart';
import 'package:fin_pocket/comman/widgets/buttons.dart';
import 'package:fin_pocket/features/auth/data/sign_up_req.dart';
import 'package:fin_pocket/features/auth/presentation/cubit/signup_cubit/signup_cubit.dart';
import 'package:fin_pocket/features/auth/presentation/pages/email_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';

class EmailSignupPage extends StatefulWidget {
  const EmailSignupPage({Key? key}) : super(key: key);

  @override
  _EmailSignupPageState createState() => _EmailSignupPageState();
}

class _EmailSignupPageState extends State<EmailSignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: Scaffold(
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
                    controller: nameController,
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
                    controller: emailController,
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
                    controller: passwordController,
                    decoration: textfieldDecoration,
                    keyboardType: TextInputType.visiblePassword,
                  )
                ],
              ),
            ),
          );
        }),
        bottomNavigationBar: Container(
          height: 100,
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<SignupCubit, SignupState>(
                listener: (context, state) {
                  if (state is SignupError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.msg),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                  if (state is SignupSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('state.msg'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is SignupLoading) {
                    return SizedBox(
                      height: 5.h,
                      width: 100.h,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  return PrimaryButton(
                    text: 'Signup',
                    onPressed: () {
                      BlocProvider.of<SignupCubit>(context).signup(
                          SignUpRequest(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text));
                    },
                  );
                },
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
