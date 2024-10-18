import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/routes/names.dart';
import 'package:ulearning_app/pages/register/bloc/register_blocs.dart';
import 'package:ulearning_app/pages/register/register_screen.dart';
import 'package:ulearning_app/pages/sign_in/bloc/signin_blocs.dart';
import 'package:ulearning_app/pages/sign_in/sign_in_screen.dart';
import 'package:ulearning_app/pages/welcome/welcome.dart';

import '../../pages/welcome/bloc/welcome_blocs.dart';

class AppScreens {
  static List<ScreenEntity> routes() {
    return [
      ScreenEntity(
        route: AppRoutes.INITIAL,
        screen: const Welcome(),
        bloc: BlocProvider(create: (_) => WelcomeBloc()),
      ),
      ScreenEntity(
        route: AppRoutes.SIGN_IN,
        screen: const SignInScreen(),
        bloc: BlocProvider(create: (_) => SignInBloc()),
      ),
      ScreenEntity(
        route: AppRoutes.REGISTER,
        screen: const RegisterScreen(),
        bloc: BlocProvider(create: (_) => RegisterBlocs()),
      ),
      // ScreenEntity(
      //   route: AppRoutes.APPLICATION,
      //   screen: const Welcome(),
      //   //bloc: BlocProvider(create: (_) => WelcomeBloc()),
      // ),
    ];
  }

// return all bloc providers
  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

// a modal that cover entire screen as we click on navigator object
  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      //check for route name matching when navigator gets triggered
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        return MaterialPageRoute(
            builder: (_) => result.first.screen, settings: settings);
      }
    }
    return MaterialPageRoute(
      builder: (_) => const SignInScreen(),
      settings: settings,
    );
  }
}

//unify BlocProvider and routes and screens
class ScreenEntity {
  String route;
  Widget screen;
  dynamic bloc;

  ScreenEntity({
    required this.route,
    required this.screen,
    this.bloc,
  });
}
