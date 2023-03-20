
import 'package:generic_project_setup/core/network/http/api_client.dart';

abstract class BaseHttpRepository {
  ApiClient client;
  BaseHttpRepository(this.client);
}
