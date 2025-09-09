import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_info_event.dart';
part 'home_info_state.dart';

class HomeInfoBloc extends Bloc<HomeInfoEvent, HomeInfoState> {
  HomeInfoBloc() : super(HomeInfoInitial()) {
    on<HomeInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
