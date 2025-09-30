import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:http/http.dart' as http;

import '../../../models/user.dart';

part 'home_info_event.dart';
part 'home_info_state.dart';

class HomeInfoBloc extends Bloc<HomeInfoEvent, HomeInfoState> {
  HomeInfoBloc() : super(HomeInfoInitial()) {
    on<CargarHomeInfo>(_loadHomeInfo);
    on<RetryHomeInfo>(_loadHomeInfo);
  }

  Future<void> _loadHomeInfo(HomeInfoEvent event, Emitter<HomeInfoState> emit) async {
    emit(HomeInfoLoading());

    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'User-Agent': 'Flutter App'
        },
      );

      if (response.statusCode == 200) {
        final decode = jsonDecode(response.body);

        if (decode is List) {
          final users =
              decode
                  .whereType<Map<String, dynamic>>()
                  .map((e) => User.fromJson(e))
                  .toList();
          emit(HomeInfoSuccess(users));
        } else {
          print("Error: La respuesta no es una lista");
          emit(HomeInfoFailed());
        }
      } else if (response.statusCode == 403) {
        print("Error 403: Acceso prohibido - Verificar permisos o CORS");
        emit(HomeInfoFailed());
      } else if (response.statusCode == 429) {
        print("Error 429: Demasiadas peticiones - Esperar antes de reintentar");
        emit(HomeInfoFailed());
      } else {
        print("Error: Código de estado ${response.statusCode}");
        emit(HomeInfoFailed());
      }
    } catch (e) {
      print("Error al realizar la petición: $e");
      emit(HomeInfoFailed());
    }
  }
}
