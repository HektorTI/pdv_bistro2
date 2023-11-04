// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pdv_bistro2/screens/tela_entrar.dart';
import 'package:pdv_bistro2/screens/tela_registrar.dart';
import 'package:pdv_bistro2/widgets/custom_app_bar.dart';

class BemVindo extends StatelessWidget {
  const BemVindo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SizedBox(
              width: 400,
              height: 400,

              //* Card Principal Centro
              child: Card(
                color: const Color.fromARGB(255, 225, 227, 227),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: const Text(
                          'Olá, seja bem-vindo(a)!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                      ),

                      // const SizedBox(height: 80),
                      //* Botao ENTRAR ****
                      MaterialButton(
                        color: const Color.fromARGB(255, 48, 48, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minWidth: 250,
                        onPressed: () {
                          // Ação ao pressionar o botão
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TelaEntrar(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Entrar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      //* Botao REGISTRAR *****
                      MaterialButton(
                        color: const Color.fromARGB(255, 48, 48, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minWidth: 250,
                        onPressed: () {
                          // Ação ao pressionar o botão
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
                            "Registrar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
