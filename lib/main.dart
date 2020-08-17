import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:ben_omera/Core/constants/router.dart';
import 'package:ben_omera/locator.dart';
import 'package:flutter/material.dart';
void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ben Omaera',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color(0xff62209c)
      ),
        initialRoute: RoutePaths.Splash,
        onGenerateRoute: Router.generateRoute,
     // home: Splash()
    );
  }
}
