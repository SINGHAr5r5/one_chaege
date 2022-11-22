abstract class HomePageState {
  const HomePageState([List props = const []]) : super();

  @override
  List<Object> get props => [];
}

class HomePageInitial extends HomePageState {
  @override
  String toString() => 'HomePageInitial';
}

class HomePageUnInitial extends HomePageState {
  @override
  String toString() => 'HomePageUnInitial';
}

class HomePageLoading extends HomePageState {
  @override
  String toString() => 'HomePageLoading';
}

class HomePageSuccess extends HomePageState {
  final String? message;

  const HomePageSuccess({this.message});

  @override
  String toString() => 'HomePageSuccess { message: $message }';
}

class HomePageFailure extends HomePageState {
  final String error;

  const HomePageFailure(this.error);

  @override
  String toString() => 'HomePageFailure { error: $error }';
}