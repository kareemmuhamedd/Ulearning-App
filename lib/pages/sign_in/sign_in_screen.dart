import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/sign_in/widgets/custom_text_field.dart';
import 'package:ulearning_app/pages/sign_in/widgets/login_and_register_button.dart';
import 'package:ulearning_app/pages/sign_in/widgets/custom_signin_appbar.dart';
import 'package:ulearning_app/pages/sign_in/widgets/third_party_login_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ThirdPartyLoginWidget(),
                Center(
                  child: reusableText('Or user your email account to login'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      SizedBox(
                        height: 5.h,
                      ),
                      const CustomTextField(
                        hintText: 'Enter your email address',
                        textType: 'email',
                        iconName: 'user',
                      ),
                      reusableText('Password'),
                      SizedBox(
                        height: 5.h,
                      ),
                      const CustomTextField(
                        hintText: 'Enter your password',
                        textType: 'password',
                        iconName: 'lock',
                      ),
                    ],
                  ),
                ),
                forgotPassword(),
                const LoginAndRegisterButton(
                  buttonName: 'Log In',
                  buttonType: 'login',
                ),
                const LoginAndRegisterButton(
                  buttonName: 'Register',
                  buttonType: 'register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
