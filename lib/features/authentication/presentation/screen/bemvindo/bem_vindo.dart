// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/custom_color_scheme.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Olá, seja bem-vindo(a)!',
                      style: Theme.of(context).textTheme.titleMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Faça seu login',
                      style: Theme.of(context).textTheme.labelMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      style: Theme.of(context).textTheme.headlineMedium ?? const TextStyle(), // Check for null and provide a default style
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: Theme.of(context).textTheme.headlineMedium ?? const TextStyle(), // Check for null and provide a default style

                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: Theme.of(context).textTheme.headlineMedium ?? const TextStyle(), // Check for null and provide a default style

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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const EsqueceuSenha()));
                          },
                          child: Text(
                            "Esqueceu sua senha?",
                            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                      color: customColorScheme.primary,
                                    ) ??
                                const TextStyle(
                                    // color: customColorScheme.onPrimaryFixedVariant,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      color: customColorScheme.onSurfaceVariant,
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
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: customDarkColorScheme.inverseSurface,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Nao tem uma conta? ',
                            style: Theme.of(context).textTheme.headlineLarge ?? const TextStyle(), // Check for null and provide a default style
                          ),
                          TextSpan(
                            text: 'Registre-se Agora',
                            style: Theme.of(context).textTheme.headlineLarge?.merge(
                                  TextStyle(
                                    // decoration: TextDecoration.underline,
                                    color: customColorScheme.primary,
                                  ),
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
