import 'package:ben_omera/Core/models/prayer.dart';
import 'package:ben_omera/Core/models/weathermodel.dart';
import 'package:ben_omera/Core/services/api.dart';
import 'package:ben_omera/Core/viewmodels/base_model.dart';
import 'package:ben_omera/Core/viewmodels/viewstate.dart';
import 'package:ben_omera/locator.dart';



class PrayerModel extends BaseModel {
  Api _api = locator<Api>();

  Prayer prayer;
  Weather currentWeather;
  Future getPrayerTime(double latitude,double longitude,int month,int year) async {
    setState(ViewState.Busy);
    prayer = await _api.getPrayerTime(latitude,longitude, month, year);
    setState(ViewState.Idle);
  }

  Future getWeatherCurrent(double latitude,double longitude) async {
    setState(ViewState.Busy);
    currentWeather = await _api.getWeatherCurrent(latitude,longitude);
    setState(ViewState.Idle);
  }
}

