import 'package:generic_project_setup/app/base/base_cache.dart';
import 'package:generic_project_setup/core/cache/preference/shared_preference_constants.dart';
import 'package:generic_project_setup/core/cache/preference_cache.dart';
import 'package:intl/intl.dart';

//Frequent Data Provider is used to store frequently used data in the app

class FrequentDataProvider{
  static BaseCache cache = PreferenceCache();

  static bool isTracking = false;

  static Future<String?> getDriverId() async{
    return await cache.get(SharedPreferenceConstant.driverId);
  }

  static Future<String?> getTripId() async{
    String? tripId = await cache.get(SharedPreferenceConstant.tripId);
    print('=========tripId: $tripId');
    return await cache.get(SharedPreferenceConstant.tripId);
  }


  static String getTodayYMD() {
    // var now = DateTime.now();
    var now = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day); //7
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }
}