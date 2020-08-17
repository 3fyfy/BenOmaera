
import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), ()=>  Navigator.of(context).pushReplacementNamed(RoutePaths.Mainnavbar));
    super.initState();

}
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        //color:Theme.of(context).accentColor,
        image: DecorationImage(image: AssetImage("assets/space.jpg"),fit: BoxFit.cover)

      ),
        child: Center(
          child: Image(image: AssetImage('assets/logo.png'),width: 130,),
        )
    );
  }
}
