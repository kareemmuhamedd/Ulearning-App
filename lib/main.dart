import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/global.dart';
import 'common/routes/routes.dart';
import 'common/values/colors.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppScreens.allBlocProviders(context)],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: AppColors.primaryText),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
            ),
            onGenerateRoute: AppScreens.generateRouteSettings,
          );
        },
      ),
    );
  }
}
