import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app_config.dart';

class Bootstrap {
  Future<void> boot() async {
    await dotenv.load();
    appConfig.loadData(dotenv.env);
  }
}
