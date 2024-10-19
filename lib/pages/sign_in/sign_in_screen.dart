import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/sign_in/bloc/signin_blocs.dart';
import 'package:ulearning_app/pages/sign_in/bloc/signin_events.dart';
import 'package:ulearning_app/pages/sign_in/bloc/signin_states.dart';
import 'package:ulearning_app/pages/sign_in/sign_in_controller.dart';
import 'package:ulearning_app/pages/sign_in/widgets/custom_text_field.dart';
import 'package:ulearning_app/pages/sign_in/widgets/login_and_register_button.dart';
import 'package:ulearning_app/pages/sign_in/widgets/custom_signin_appbar.dart';
import 'package:ulearning_app/pages/sign_in/widgets/third_party_login_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBlocs, SignInState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            minimum: EdgeInsets.only(top: 30.h),
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar(appBarTitle:'Log In'),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ThirdPartyLoginWidget(),
                    Center(
                      child:
                          reusableText('Or user your email account to login'),
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
                          CustomTextField(
                            hintText: 'Enter your email address',
                            textType: 'email',
                            iconName: 'user',
                            onChanged: (value) {
                              context.read<SignInBlocs>().add(
                                    EmailEvent(value),
                                  );
                            },
                          ),
                          reusableText('Password'),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomTextField(
                            hintText: 'Enter your Password',
                            textType: 'password',
                            iconName: 'lock',
                            onChanged: (value) {
                              context.read<SignInBlocs>().add(
                                    PasswordEvent(value),
                                  );
                            },
                          ),
                        ],
                      ),
                    ),
                    forgotPassword(),
                    LoginAndRegisterButton(
                      buttonName: 'Log In',
                      buttonType: 'login',
                      onTap: () {
                        SignInController(context: context).handleSignIn('email');
                      },
                    ),
                    LoginAndRegisterButton(
                      buttonName: 'Sign Up',
                      buttonType: 'register',
                      onTap: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
