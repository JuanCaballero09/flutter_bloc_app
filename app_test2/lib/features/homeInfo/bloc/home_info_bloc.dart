import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_info_event.dart';
part 'home_info_state.dart';

class HomeInfoBloc extends Bloc<HomeInfoEvent, HomeInfoState> {
  HomeInfoBloc() : super(HomeInfoInitial()) {
    on<CargarHomeInfo>((event, emit) async{
      emit(HomeInfoLoading());

      await Future.delayed(Duration(seconds: 2));

      emit(HomeInfoFailed());
    });

    on<RetryHomeInfo>((event, emit) async{
      emit(HomeInfoLoading());

      await Future.delayed(Duration(seconds: 2));

      emit(HomeInfoFailed());
    });
  }
}
