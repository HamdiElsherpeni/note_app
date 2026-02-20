import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delte_cubit_state.dart';

class DelteCubitCubit extends Cubit<DelteCubitState> {
  DelteCubitCubit() : super(DelteCubitInitial());
}
