import 'package:generic_project_setup/core/cache/preference_cache.dart';

import 'base_cache.dart';
import 'base_http_repository.dart';

abstract class BaseCacheRepository {
  BaseCache cache = PreferenceCache();
  BaseHttpRepository repository;
  BaseCacheRepository(this.repository);
}
