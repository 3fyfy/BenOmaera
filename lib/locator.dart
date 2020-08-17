import 'package:ben_omera/Core/services/api.dart';
import 'package:ben_omera/Core/viewmodels/widgets/prayer_model.dart';
import 'package:get_it/get_it.dart';

import 'package:provider/provider.dart';



GetIt locator = GetIt.asNewInstance();

void setupLocator() {
  //locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());
//  locator.registerLazySingleton(() => APIService());


//  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => PrayerModel());
//  locator.registerFactory(() => CommentsModel());
}
