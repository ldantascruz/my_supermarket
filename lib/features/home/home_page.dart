import 'dart:developer';

import 'package:compras/features/home/home_bloc.dart';
import 'package:compras/features/home/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/design/app_colors.dart';
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
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeWidth * 0.01,
                  vertical: sizeHeight * 0.02,
                ),
                child: const Text(
                  "Lista de Compras",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: sizeHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => controller.add(
                      DecrementQuantityHomeEvent(),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: Size(
                        sizeWidth * 0.1,
                        sizeWidth * 0.1,
                      ),
                    ),
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      log(controller.state.value.toString());
                      return Text(
                        '${state.value}',
                        style: const TextStyle(fontSize: 24),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: Size(
                        sizeWidth * 0.1,
                        sizeWidth * 0.1,
                      ),
                    ),
                    onPressed: () => controller.add(
                      IncrementQuantityHomeEvent(),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  SizedBox(
                    width: sizeWidth * 0.25,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        color: AppColors.white,
                      ),
                      decoration: const InputDecoration(
                        //fillColor: AppColors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                            width: 2.0,
                            strokeAlign: 20,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        labelText: 'Item',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                            width: 1.0,
                            strokeAlign: 20,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: sizeWidth * 0.02),
                  SizedBox(
                    width: sizeWidth * 0.25,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      style: const TextStyle(
                        color: AppColors.white,
                      ),
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                            width: 2.0,
                            strokeAlign: 20,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        labelText: 'Valor Un.',
                        // labelStyle: TextStyle(
                        //   fontSize: 16,
                        //   color: AppColors.white,
                        // ),
                        // hintText: 'exemplo@exemplo.com',
                        // hintStyle: TextStyle(
                        //   fontSize: 16,
                        //   color: AppColors.snowWhite,
                        //),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                            width: 1.0,
                            strokeAlign: 20,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      //cursorColor: AppColors.primaryColor,
                      //controller: _emailController,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      minimumSize: Size(
                        sizeWidth * 0.1,
                        sizeWidth * 0.1,
                      ),
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
