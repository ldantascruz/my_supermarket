// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:compras/features/home/home_event.dart';
import 'package:compras/features/home/home_state.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get(BuildContext context) => Modular.get<HomeBloc>();

  HomeBloc() : super(InitialValueHomeState(value: 0)) {
    on<IncrementQuantityHomeEvent>(_incrementQtd);
    on<DecrementQuantityHomeEvent>(_decrementQtd);
  }

  Future<void> _incrementQtd(HomeEvent event, Emitter emit) async {
    final int incrementedQtd = state.value + 1;
    emit(IncrementedValueSuccessHomeState(value: incrementedQtd));
  }

  Future<void> _decrementQtd(HomeEvent event, Emitter emit) async {
    if (state.value > 0) {
      final int incrementedQtd = state.value - 1;
      emit(DecrementedValueSuccessHomeState(value: incrementedQtd));
    }
  }
}
