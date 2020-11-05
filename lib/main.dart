import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter/app/locator.dart';
import 'package:starter/app/router.gr.dart';
import 'package:starter/ui/views/bottom_bar/bottom_bar_view.dart';
import 'package:starter/ui/views/home/home_view.dart';
import 'package:starter/ui/views/splash/splash_view.dart';

void main() async{

  await setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}

