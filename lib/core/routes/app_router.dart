import 'package:athar_alsahaba/features/auth/presention/auth/auth_cubit.dart';
import 'package:athar_alsahaba/features/auth/presention/views/sigin_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presention/views/forgot_passwordd.dart';
import '../../features/auth/presention/views/sign_up.dart';
import '../../features/home/presention/views/home_view.dart';
import '../../features/on_boarding/presention/views/on_boarding_screen.dart';
import '../../features/splash/presention/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: const <RouteBase>[
      ],
    ),
    GoRoute(
      path: '/OnBoardingScreen',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingScreen();
      },
      routes: const <RouteBase>[
      ],
    ),
    GoRoute(
      path: '/SignUp',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignUp(),
        );
      },
      routes: const <RouteBase>[
      ],
    ),
    GoRoute(
      path: '/SignIn',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignIn(),
        );
      },
      routes: const <RouteBase>[
      ],
    ),
    GoRoute(
      path: '/HomeView',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
      routes: const <RouteBase>[
      ],
    ),
    GoRoute(
      path: '/ForgotPassword',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: const ForgotPassword(),
        );
      },
      routes: const <RouteBase>[
      ],
    ),
  ],
);

