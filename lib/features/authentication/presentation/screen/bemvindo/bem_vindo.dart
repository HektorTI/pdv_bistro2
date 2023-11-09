// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/color_schemes.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/esqueceu%20senha/tela_esqueceu_senha.dart';
import 'package:pdv_bistro2/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/registrar/tela_registrar.dart';

class BemVindo extends StatelessWidget {
  const BemVindo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 550,
            height: 550,
            child: Card(
              // color: const Color.fromARGB(255, 225, 227, 227),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Olá, seja bem-vindo(a)!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Faça seu login',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'CPF',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EsqueceuSenha()));
                          },
                          child: const Text(
                            "Esqueceu sua senha?",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      color: ColorSchemes.lightColorScheme.inversePrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minWidth: 300,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaRegsitrar(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Nao tem uma conta? ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  ColorSchemes.lightColorScheme.inversePrimary,
                            ),
                          ),
                          TextSpan(
                            text: 'Registre-se Agora',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  ColorSchemes.darkColorScheme.inversePrimary,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Ação ao tocar em "Registrar"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TelaRegsitrar(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
