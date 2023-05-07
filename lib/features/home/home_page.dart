import 'dart:developer';

import 'package:compras/features/home/home_bloc.dart';
import 'package:compras/features/home/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeBloc controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<HomeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const Text(
                "Minha Lista de Compras",
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    onPressed: () => controller.add(
                      DecrementQuantityHomeEvent(),
                    ),
                    child: const Icon(Icons.remove),
                  ),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      log(controller.state.value.toString());
                      return Text('${state.value}');
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    onPressed: () => controller.add(
                      IncrementQuantityHomeEvent(),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox.shrink(),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.check),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
