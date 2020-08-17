import 'package:flutter/material.dart';
import 'package:ben_omera/Core/viewmodels/widgets/prayer_model.dart';
import 'package:ben_omera/UI/base_view.dart';
import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:geolocator/geolocator.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
      double height=MediaQuery.of(context).size.height;
      double width=MediaQuery.of(context).size.width;

      return BaseView<PrayerModel>(
          onModelReady: (model) async{
            Position position= await Geolocator().getCurrentPosition().then((value){ return value;});
            return model.getWeatherCurrent(position.latitude,position.longitude);},
          builder: (context, model, child) => (model.currentWeather==null)?Container(
              width: width,
              height:height,
              decoration: BoxDecoration(
                //color:Theme.of(context).accentColor,
                  image: DecorationImage(image: AssetImage("assets/space.jpg"),fit: BoxFit.cover)

              ),    child: Center(child: CircularProgressIndicator())):
          Scaffold(
              body: Container(
                  width: width,
                  decoration: BoxDecoration(
                    //color:Theme.of(context).accentColor,
                      image: DecorationImage(image: AssetImage("assets/space.jpg"),fit: BoxFit.cover)

                  ),
                  child:   Column(
                      children: <Widget>[
                        AppBarWidget("اسلاميات"),
                        Container(
                  height: height-kToolbarHeight-100-height*.05,
                  margin: EdgeInsets.only(top: height*.05),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [Color(0xff340082), Color(0xfff7b09a)],
                    begin: const FractionalOffset(0.0, 0.2),
                    end: const FractionalOffset(0.0, 1.3),
                    stops: [0.0, 0.8],
                    tileMode: TileMode.clamp
                    ),
                  ),
                  child:  ListView(
                                padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
                                children: <Widget>[

                                  Container(
                                      height: height*.3,
                                      child:Image.network(model.currentWeather.current.weatherIcons[0])
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:20.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(model.currentWeather.current.temperature.toString())

                                      ],
                                    ),
                                  )
                                ]
                            )
                        )
                      ]
                  )
              )
          )
      );

  }
}
