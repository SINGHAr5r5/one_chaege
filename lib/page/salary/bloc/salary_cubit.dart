import 'package:flutter_bloc/flutter_bloc.dart';
import '../salary.dart';

class SalaryCubit extends Cubit<SalaryState> {
  SalaryCubit() : super(SalaryInitial()) {
    // TODO
  }
}