import 'package:compras/common/constants/routes.dart';
import 'package:compras/common/design/app_colors.dart';
import 'package:compras/features/sign_up/sign_up_bloc.dart';
import 'package:compras/features/sign_up/sign_up_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWwidth = MediaQuery.of(context).size.width;

    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    final controller = Modular.get<SignUpBloc>();

    return Scaffold(
      body: Container(
        height: sizeHeight,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.darkGrey,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sizeWwidth * 0.05,
                vertical: sizeHeight * 0.05,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: sizeHeight * 0.035,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.05),
                  //nome
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
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
                      labelText: 'Nome',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                      hintText: 'João da Silva',
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
                    controller: nameController,
                  ),
                  SizedBox(height: sizeHeight * 0.03),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
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
                    controller: emailController,
                  ),
                  SizedBox(height: sizeHeight * 0.03),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
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
                    controller: passwordController,
                  ),
                  SizedBox(height: sizeHeight * 0.03),
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
                      labelText: 'Confirmar Senha',
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
                    controller: confirmPasswordController,
                  ),
                  SizedBox(height: sizeHeight * 0.05),
                  //button connfirm
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.navigate(NamedRoutes.home);
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: AppColors.black,
                      alignment: Alignment.center,
                      backgroundColor: AppColors.white,
                      fixedSize: Size(sizeWwidth, sizeHeight * 0.07),
                    ),
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: sizeHeight * 0.02,
                      ),
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.05),
                  GestureDetector(
                    onLongPress: () {},
                    onTap: () => controller.add(SignUpJumpToPage()),
                    child: Container(
                      alignment: Alignment.center,
                      width: sizeWwidth,
                      child: const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(text: 'Já tem uma conta? '),
                            TextSpan(
                              text: 'Entrar',
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
      ),
    );
  }
}
