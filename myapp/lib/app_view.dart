import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/blocs/bloc/authentication_bloc.dart';

import 'screens/auth/Views/welcome_screen.dart';
import 'screens/home/Views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "pizza apppp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade100,
              onBackground: Colors.black,
              primary: const Color.fromARGB(255, 0, 103, 187),
              onPrimary: const Color.fromARGB(255, 253, 248, 199))),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: ((context, state) {
        if (state.status == AuthenticatedStatus.authenicated) {
          return HomeScreen();
        } else {
          return WelcomeScreen();
        }
      })),
    );
  }
}
