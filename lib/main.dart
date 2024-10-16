import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/bloc_providers.dart';
import 'package:ulearning_app/pages/register/register_screen.dart';
import 'package:ulearning_app/pages/sign_in/sign_in_screen.dart';
import 'package:ulearning_app/pages/welcome/welcome.dart';

import 'common/values/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme:  const AppBarTheme(
                iconTheme: IconThemeData(color: AppColors.primaryText),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
            ),
            home: const Welcome(),
            routes: {
              '/signIn': (context) => const SignInScreen(),
              '/register': (context) => const RegisterScreen(),
            },
          );
        },
      ),
    );
  }
}
