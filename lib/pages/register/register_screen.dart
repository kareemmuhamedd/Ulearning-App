import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/register/bloc/register_events.dart';
import 'package:ulearning_app/pages/register/register_controller.dart';

import '../sign_in/widgets/custom_signin_appbar.dart';
import '../sign_in/widgets/custom_text_field.dart';
import '../sign_in/widgets/login_and_register_button.dart';
import '../sign_in/widgets/third_party_login_widget.dart';
import 'bloc/register_blocs.dart';
import 'bloc/register_states.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBlocs, RegisterStates>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            minimum: EdgeInsets.only(top: 30.h),
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar(appBarTitle: 'Sign Up'),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: reusableText(
                          'Enter your details below and free sign up'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60.h),
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText('User name'),
                          CustomTextField(
                            hintText: 'Enter your user name',
                            textType: 'name',
                            iconName: 'user',
                            onChanged: (value) {
                              context.read<RegisterBlocs>().add(UserNameEvent(value));
                            },
                          ),
                          reusableText('Email'),
                          CustomTextField(
                            hintText: 'Enter your email address',
                            textType: 'email',
                            iconName: 'user',
                            onChanged: (value) {
                              context.read<RegisterBlocs>().add(EmailEvent(value));

                            },
                          ),
                          reusableText('Password'),
                          CustomTextField(
                            hintText: 'Enter your Password',
                            textType: 'password',
                            iconName: 'lock',
                            onChanged: (value) {
                              context.read<RegisterBlocs>().add(PasswordEvent(value));

                            },
                          ),
                          reusableText('Confirm Password'),
                          CustomTextField(
                            hintText: 'Enter your Confirm Password',
                            textType: 'password',
                            iconName: 'lock',
                            onChanged: (value) {
                              context.read<RegisterBlocs>().add(ConfirmPasswordEvent(value));
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25.w),
                      child: reusableText(
                        'By creating an account you have to agree with our Terms & Conditions.',
                      ),
                    ),
                    LoginAndRegisterButton(
                      buttonName: 'Sign Up',
                      onTap: () {
                       RegisterController(context).handelEmailRegister();
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
