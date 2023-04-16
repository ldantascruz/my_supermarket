import 'package:compras/common/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      (_) => Modular.to.navigate(NamedRoutes.signIn),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 7, 7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/supermarket.png'),
            const SizedBox(height: 8),
            const Text(
              'SuperMarket',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'ExpletusSans',
                color: Color.fromARGB(255, 211, 205, 205),
              ),
            ),
            const SizedBox(height: 8),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 211, 205, 205),
            ),
          ],
        ),
      ),
    );
  }
}
