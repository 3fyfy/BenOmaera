import 'dart:async';
import 'dart:math' show pi;

import 'package:ben_omera/Core/qiblah/utils.dart';
import 'package:ben_omera/UI/qibla/loading_indicator.dart';
import 'package:ben_omera/UI/qibla/location_error_widget.dart';
import 'package:compasstools/compasstools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:geolocator/geolocator.dart';

class QiblahCompass extends StatefulWidget {
  @override
  _QiblahCompassState createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {

  int _haveSensor;
  String sensorType;
  double offsetint=0;
  Future  offset()async{
  Position position= await Geolocator().getCurrentPosition().then((value){ return value;});

  setState(() {

  offsetint =
  Utils.getOffsetFromNorth(position.latitude, position.longitude);
  });
  }

  @override
  void initState() {
  offset();
  super.initState();
  checkDeviceSensors();

  }

  Future<void> checkDeviceSensors() async {

  int haveSensor;

  try{
  haveSensor = await Compasstools.checkSensors;

  switch(haveSensor) {
  case 0: {
  // statements;
  sensorType="No sensors for Compass";
  }
  break;

  case 1: {
  //statements;
  sensorType="Accelerometer + Magnetoneter";
  }
  break;

  case 2: {
  //statements;
  sensorType="Gyroscope";
  }
  break;

  default: {
  //statements;
  sensorType="Error!";
  }
  break;
  }

  } on Exception {

  }

  if (!mounted) return;

  setState(() {
  _haveSensor = haveSensor;
  });
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;

    final _compassSvg = SvgPicture.asset('assets/compass.svg');
  final _needleSvg = SvgPicture.asset(
  'assets/needle.svg',
  fit: BoxFit.contain,
  alignment: Alignment.center,
  );
  return   Container(
  child: Column(
  children:<Widget>[StreamBuilder(
  stream: Compasstools.azimuthStream,
  builder: (BuildContext context, AsyncSnapshot<int> snapshot){
  if(snapshot.hasData) {
  return Container(
    height: height*.3,

    child: Stack(
    alignment: Alignment.center,
    children: <Widget>[
    RotationTransition(turns: new AlwaysStoppedAnimation(-snapshot.data/360),
    child: _compassSvg,
    ),
    RotationTransition(turns: new AlwaysStoppedAnimation((((snapshot.data)+ (360 - offsetint) ?? 0) *-1)/360),
    alignment: Alignment.center,
    child: _needleSvg,
    ),

    ],
    ),
  );

  } else
  return Text("Error in stream");
  },
  ),
  ],),
  );
  }


}


