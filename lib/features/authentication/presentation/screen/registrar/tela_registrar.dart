import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/color_schemes.dart';
import 'package:pdv_bistro2/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/bemvindo/bem_vindo.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/aplicativo/tela_aplicativo.dart';

class TelaRegsitrar extends StatelessWidget {
  const TelaRegsitrar({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Olá, se registre para continuar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nome Completo',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
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
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Comfirme senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                            builder: (context) => const TelaAplicativo(),
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
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Ja tem uma conta? ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  ColorSchemes.lightColorScheme.inversePrimary,
                            ),
                          ),
                          TextSpan(
                            text: 'Entrar Agora',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  ColorSchemes.darkColorScheme.inversePrimary,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Ação ao tocar em "Login"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BemVindo(),
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
