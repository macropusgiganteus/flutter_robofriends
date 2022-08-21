import 'package:bloc/bloc.dart';

class CouterCubit extends Cubit<int> {
  CouterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
