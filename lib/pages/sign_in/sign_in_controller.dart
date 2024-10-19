import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/widgets/flutter_toast.dart';
import 'package:ulearning_app/pages/sign_in/bloc/signin_blocs.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  void handleSignIn(String type) async {
    try {
      if (type == 'email') {
        final state = context.read<SignInBlocs>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          toastInfo(msg: 'You need to fill email address.');
          return;
        }
        if (password.isEmpty) {
          toastInfo(msg: 'You need to fill password.');
          return;
        }
        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          if (credential.user == null) {
            toastInfo(msg: 'You don\'t have account');
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: 'You need to verify your email.');
            return;
          }
          var user = credential.user;
          if (user != null) {
            print('user is exist');
            Navigator.of(context).pushNamedAndRemoveUntil('/application', (route) => false);
          } else {
            toastInfo(msg: 'Currently you are not a user of this app.');
            return;
          }
        } on FirebaseException catch (e) {
          if (e.code == 'invalid-credential') {
            toastInfo(msg: 'Make sure your email and password is correct.');
            return;
          } else if (e.code == 'invalid-email') {
            toastInfo(msg: 'The email address is badly formatted.');
            return;
          } else {
            toastInfo(msg: 'Something went wrong, try again later.');
            return;
          }
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
