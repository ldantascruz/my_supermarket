import 'package:compras/common/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/design/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (_) => Navigator.of(context).popAndPushNamed(NamedRoutes.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: sizeHeight,
        width: sizeWwidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.primaryGradient,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/supermarket.png',
                height: sizeHeight * 0.3,
              ),
              SizedBox(height: sizeHeight * 0.01),
              Text(
                'SuperMarket',
                style: TextStyle(
                  fontSize: sizeHeight * 0.04,
                  fontFamily: 'ExpletusSans',
                  color: AppColors.snowWhite,
                ),
              ),
              SizedBox(height: sizeHeight * 0.02),
              const CircularProgressIndicator(
                color: AppColors.snowWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
