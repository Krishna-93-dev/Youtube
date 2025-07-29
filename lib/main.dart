import 'package:flutter/material.dart';
import 'package:flutter_application_krushnesh/modal/news_modal.dart';
import 'package:flutter_application_krushnesh/screens.dart/Shorts.dart';
import 'package:flutter_application_krushnesh/screens.dart/dummy_screen.dart';
import 'package:flutter_application_krushnesh/screens.dart/forgot_password_screen.dart';
import 'package:flutter_application_krushnesh/screens.dart/home_screen.dart';
import 'package:flutter_application_krushnesh/screens.dart/library.dart';
import 'package:flutter_application_krushnesh/screens.dart/login_screen.dart';
import 'package:flutter_application_krushnesh/screens.dart/subscription.dart';
import 'package:flutter_application_krushnesh/screens.dart/tab.dart';
import 'package:flutter_application_krushnesh/screens.dart/youtubehomepage.dart';
import 'package:flutter_application_krushnesh/screens.dart/youtubeplayvideo.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get token => null;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: token == null ? '/newsscreen' : '/tabs', //loginscreen  
      routes: {
        '/': (context) =>NewsScreen(),
        '/loginscreen': (context) => LoginScreen(),
        '/shorts': (context) => Shorts(),
        '/tabs': (context) => Tabs(),
        '/forgotPassword': (context) => ForgotPasswordScreen(),
        '/library_screen': (context) => Library(),
        '/Notification_screen': (context) => Notifications(),
        '/Subscription': (context) => Subscription(),
        '/creat_new_account': (context) => CreateNewAccountScreen(),
'/newsscreen': (context) => NewsScreen(),
        '/youtube_screen': (context) => Youtube(),
        '/YoutubePlayVideo': (context) => YoutubePlayVideo(),
        '/home_screen':(context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }

  CreateNewAccountScreen() {}

  Notifications() {}
}
