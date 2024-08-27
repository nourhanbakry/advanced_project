import 'package:advanced_project/core/di/dependancy_injection.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/features/home/ui/home_screen.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/ui/login_screen.dart';
import 'package:advanced_project/features/onBoarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in anyscreen like this { arguments as class name  }
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
