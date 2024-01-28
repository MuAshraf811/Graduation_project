// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  int index = 1;
  NavigationCubit() : super(NavigationInitial());

  changeIndex(int target) {
    index = target;
    emit(NavigationStateChanged());
  }
}
