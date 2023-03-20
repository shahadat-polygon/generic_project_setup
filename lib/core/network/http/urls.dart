import '../../../app/config/env_config/app_config.dart';

class Urls{

  static final baseUrl = appConfig.getApiClientConfig().baseUrl;
  static final login = '${baseUrl}dev/driver/login';
  static final getTrip = '${baseUrl}dev/driver/trip';
  static final getDriver = '${baseUrl}dev/driver/user';
  static final getDayStatus = '${baseUrl}dev/driver/dayStatus';
  static final updateTripStatus = '${baseUrl}dev/driver/dayStatus';
  static final getAllTrips = '${baseUrl}dev/driver/trip';
  static final getChildrenList = '${baseUrl}dev/driver/stopChildren';
  static final changeTripStatus = '${baseUrl}dev/driver/ride';
  static final stopChildren = '${baseUrl}dev/driver/stopChildren';
  static const postLocation = 'https://5wlp8mae7e.execute-api.ap-northeast-1.amazonaws.com/dev/driver/vehicleposition';
}