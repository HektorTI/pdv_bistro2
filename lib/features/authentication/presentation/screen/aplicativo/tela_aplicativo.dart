import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro2/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro2/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/registrar/tela_registrar.dart';
import 'package:pdv_bistro2/Theme/color_schemes.dart';

class TelaAplicativo extends StatelessWidget {
  const TelaAplicativo({Key? key}) : super(key: key);

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
                      'FUTURA TELA DO APLICATIVO',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        // color: _darkColorScheme.secondary, // Defina a cor desejada
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'tela em branco',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        // color: _darkColorScheme.secondary, // Defina a cor desejada
                      ),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      padding: const EdgeInsets.only(top: 350),
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Nao tem uma conta? ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorSchemes
                                    .lightColorScheme.inversePrimary,
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
                                      builder: (context) =>
                                          const TelaRegsitrar(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        icons: const [
          Icons.delivery_dining,
          Icons.local_dining,
          Icons.chat_bubble,
          Icons.store,
          // Adicione outros ícones, se necessário
        ],
        labels: const [
          "Delivery",
          "Mesas",
          "WhatsApp",
          "Balcão",
        ],
        onPressed: [
          () {
            // Ação para delivery
          },
          () {
            // Ação para mesas
          },
          () {
            // Ação para WhatsApp
          },
          () {
            // Ação para balcão
          },
        ],
      ),
    );
  }
}
