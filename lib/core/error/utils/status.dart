enum FetchStatus { initial, loading, success, failure }

extension ArticleStatusX on FetchStatus {
  bool get isInitial => this == FetchStatus.initial;
  bool get isLoading => this == FetchStatus.loading;
  bool get isSuccess => this == FetchStatus.success;
  bool get isFailure => this == FetchStatus.failure;
}
