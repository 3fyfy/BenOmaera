
import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:ben_omera/UI/Splash.dart';
import 'package:ben_omera/UI/characterDetails.dart';
import 'package:ben_omera/UI/characteristics.dart';
import 'package:ben_omera/UI/convertDate.dart';
import 'package:ben_omera/UI/home.dart';
import 'package:ben_omera/UI/islamic.dart';
import 'package:ben_omera/UI/mainNavBar.dart';
import 'package:ben_omera/UI/news.dart';
import 'package:ben_omera/UI/newsDetails.dart';
import 'package:ben_omera/UI/staDretails.dart';
import 'package:ben_omera/UI/starsPage.dart';
import 'package:ben_omera/UI/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => Home());
      case RoutePaths.Mainnavbar:
        return MaterialPageRoute(builder: (_) => Mainnavbar());
      case RoutePaths.StarsPage:
        return MaterialPageRoute(builder: (_) => StarsPage());
      case RoutePaths.StarDetails:
        return MaterialPageRoute(builder: (_) => StarDetails());
      case RoutePaths.ConvertDate:
        return MaterialPageRoute(builder: (_) => ConvertDate());
      case RoutePaths.Characteristics:
        return MaterialPageRoute(builder: (_) => Characteristics());
      case RoutePaths.News:
        return MaterialPageRoute(builder: (_) => News());
        case RoutePaths.Islamic:
        return MaterialPageRoute(builder: (_) => Islamic());
      case RoutePaths.CharacterDetails:
        return MaterialPageRoute(builder: (_) => CharacterDetails());
      case RoutePaths.NewsDetails:
        return MaterialPageRoute(builder: (_) => NewsDetails());
        case RoutePaths.Weather:
        return MaterialPageRoute(builder: (_) => WeatherPage());


       // var id = settings.arguments;
        //return MaterialPageRoute(builder: (_) => Address( );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}