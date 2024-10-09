import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/sign_in/bloc/signin_blocs.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  void handleSignIn(String type) async {
    try {
      if (type == 'email') {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          // todo handle email is empty
        }
        if (password.isEmpty) {
          // todo handle password is empty
        }
        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          if(credential.user==null){
            // todo handle user not found
          }
          if(!credential.user!.emailVerified){
            // todo handle email not verified
          }
          var user = credential.user;
          if(user!=null){
            // todo we got verified user from firebase
          }else{
            // todo we have error getting user from firebase
          }
        } catch (e) {
          print(e);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
