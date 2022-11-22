abstract class SalaryState {
  const SalaryState([List props = const []]) : super();

  @override
  List<Object> get props => [];
}

class SalaryInitial extends SalaryState {
  @override
  String toString() => 'SalaryInitial';
}

class SalaryUnInitial extends SalaryState {
  @override
  String toString() => 'SalaryUnInitial';
}

class SalaryLoading extends SalaryState {
  @override
  String toString() => 'SalaryLoading';
}

class SalarySuccess extends SalaryState {
  final String? message;

  const SalarySuccess({this.message});

  @override
  String toString() => 'SalarySuccess { message: $message }';
}

class SalaryFailure extends SalaryState {
  final String error;

  const SalaryFailure(this.error);

  @override
  String toString() => 'SalaryFailure { error: $error }';
}