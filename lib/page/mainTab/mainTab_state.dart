abstract class MainTabState {
  const MainTabState([List props = const []]) : super();

  @override
  List<Object> get props => [];
}

class MainTabInitial extends MainTabState {
  @override
  String toString() => 'MainTabInitial';
}

class MainTabUnInitial extends MainTabState {
  @override
  String toString() => 'MainTabUnInitial';
}

class MainTabLoading extends MainTabState {
  @override
  String toString() => 'MainTabLoading';
}

class MainTabSuccess extends MainTabState {
  final String? message;

  const MainTabSuccess({this.message});

  @override
  String toString() => 'MainTabSuccess { message: $message }';
}

class MainTabFailure extends MainTabState {
  final String error;

  const MainTabFailure(this.error);

  @override
  String toString() => 'MainTabFailure { error: $error }';
}