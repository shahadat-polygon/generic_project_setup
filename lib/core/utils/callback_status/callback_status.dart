enum CallbackStatus { initial, success, error, loading, isAdded, isRemoved, isLoaded }

extension CallbackStatusX on CallbackStatus{
  bool get isInitial => this == CallbackStatus.initial;
  bool get isSuccess => this == CallbackStatus.success;
  bool get isError => this == CallbackStatus.error;
  bool get isLoading => this == CallbackStatus.loading;
}