import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/home/bloc/home_screen_events.dart';
import 'package:ulearning_app/pages/home/bloc/home_screen_states.dart';

class HomeScreenBlocs extends Bloc<HomeScreenEvent, HomeScreenStates> {
  HomeScreenBlocs() : super(const HomeScreenStates()) {
    on<HomeScreenDots>(_homeScreenDots);
  }

  void _homeScreenDots(HomeScreenDots event, Emitter<HomeScreenStates> emit) {
    emit(state.copyWith(index: event.index));
  }
}
