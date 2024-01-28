import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<int> {
  ThemeCubit() : super(0);

  getThemeState(bool val) {
    if (val) {
      emit(1);
    } else {
      emit(0);
    }
  }
}
