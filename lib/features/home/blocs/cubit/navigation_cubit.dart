// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<int> {
  int cubitIndex = 1;
  NavigationCubit() : super(0);

  changeIndex(int target) {
    cubitIndex = target;
    if (kDebugMode) {
      print('Index in cubit has changed');
    }
    emit(target);
    if (kDebugMode) {
      print('State has been emited');
    }
  }
}
