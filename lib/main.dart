import 'dart:io';

import 'package:city_way/features/Auth/domain/entities/user.dart';
import 'package:city_way/features/Auth/presentation/bloc/signin_bloc/signin_bloc.dart';
import 'package:city_way/features/Auth/presentation/bloc/signup_bloc/signup_bloc.dart';
import 'package:city_way/features/Auth/presentation/pages/SignIn/SignIn_Page.dart';
import 'package:city_way/features/Intro/presentation/pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:city_way/core/injection/injection_container.dart' as di;
import 'package:flutter_config/flutter_config.dart';

void main() async {
  await di.init();
  WidgetsFlutterBinding
      .ensureInitialized(); //async & await in main to ensure initialize
  await FlutterConfig.loadEnvVariables();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: 'AIzaSyDcrgNcwCRrz-fzITrEIhjbopVMyyXxTXM',
              appId: '1:122127642167:android:6282e07bc64dbdd0eb59b2',
              messagingSenderId: '122127642167',
              projectId: 'cityway-92672'))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => di.sl<SignupBloc>()..add(SignUpEvent(user: User(email: '',password: '')))),
          BlocProvider(create: (_) => di.sl<SigninBloc>()..add(SignInEvent(user: User(email: '',password: '')))),
        ],
        child:
  
         MaterialApp(
          title: 'cityWay',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SignInPage(),
        )
                );
  }
}
