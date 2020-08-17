import 'dart:async';
import 'dart:convert';

import 'package:ben_omera/Core/models/prayer.dart';
import 'package:ben_omera/Core/models/weathermodel.dart';

import 'package:http/http.dart' as http;


/// The service responsible for networking requests
class Api {
  static const endpointPrayer = 'http://api.aladhan.com/v1/calendar';
  static const endpointWeather = 'http://api.weatherstack.com/current?access_key=60a2864c9a8c22e85b52d67fc3db3445&query=';

  var client = new http.Client();

  Future<Prayer> getPrayerTime(double latitude,double longitude,int month,int year) async {

    var response = await client.get('$endpointPrayer?latitude=${latitude}&longitude=${longitude}&method=2&month=${month}&year=${year}');


    return Prayer.fromJson(json.decode(response.body));
  }


  Future<Weather> getWeatherCurrent(double latitude,double longitude ) async {

    var response = await client.get('$endpointWeather${latitude},${longitude}');


    return Weather.fromJson(json.decode(response.body));
  }




}
