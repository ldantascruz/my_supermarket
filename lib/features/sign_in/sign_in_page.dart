// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:compras/common/design/app_colors.dart';
import 'package:compras/features/sign_in/sign_in_bloc.dart';
import 'package:compras/features/sign_in/sign_in_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sizeHeight = MediaQuery.of(context).size.height;
    final _sizeWwidth = MediaQuery.of(context).size.width;

    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    final controller = Modular.get<SignInBloc>();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.darkGrey,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: _sizeWwidth * 0.05,
              vertical: _sizeHeight * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: _sizeHeight * 0.035,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: _sizeHeight * 0.05),
                //login
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(
                    color: AppColors.white,
                  ),
                  decoration: const InputDecoration(
                    //fillColor: AppColors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.white,
                        width: 3.0,
                        strokeAlign: 20,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                    hintText: 'exemplo@exemplo.com',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.snowWhite,
                    ),
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
                  cursorColor: AppColors.primaryColor,
                  controller: _emailController,
                ),
                SizedBox(height: _sizeHeight * 0.03),
                //password
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.go,
                  style: const TextStyle(
                    color: AppColors.white,
                  ),
                  obscureText: true,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.white,
                        width: 3.0,
                        strokeAlign: 20,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                    hintText: '********',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.snowWhite,
                    ),
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
                  cursorColor: AppColors.primaryColor,
                  controller: _passwordController,
                ),
                SizedBox(height: _sizeHeight * 0.05),
                //button connfirm
                ElevatedButton(
                  onPressed: () => controller.add(SignInJumpToPageHome()),
                  style: ElevatedButton.styleFrom(
                    shadowColor: AppColors.black,
                    alignment: Alignment.center,
                    backgroundColor: AppColors.white,
                    fixedSize: Size(
                      _sizeWwidth,
                      _sizeHeight * 0.07,
                    ),
                  ),
                  child: Text(
                    'Confirmar',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: _sizeHeight * 0.02,
                    ),
                  ),
                ),
                SizedBox(height: _sizeHeight * 0.05),
                GestureDetector(
                  onLongPress: () {},
                  onTap: () => controller.add(SignInJumpToPageSignUp()),
                  child: Container(
                    alignment: Alignment.center,
                    width: _sizeWwidth,
                    child: const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(text: 'Não tem uma conta? '),
                          TextSpan(
                            text: 'Cadastre-se',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
