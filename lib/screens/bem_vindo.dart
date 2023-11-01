import 'package:flutter/material.dart';
import 'package:pdv_bistro2/screens/tela_entrar.dart';
import 'package:pdv_bistro2/screens/tela_registrar.dart';

class BemVindo extends StatelessWidget {
  const BemVindo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: const Text(
          'Software Bistro',
          style: TextStyle(color: Colors.white),
        ),
        leading: Image.asset('assets/images/bistro2.jpg'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.admin_panel_settings,
              color: Colors.white,
              // Ícone branco
            ),
            onPressed: () {
              // Ação quando a imagem for clicada
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 500,
            height: 500,
            child: Card(
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
                    const Text(
                      'Faça seu login',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 80),
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
                    const SizedBox(height: 20),
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 225, 227, 227),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.delivery_dining,
                color: Color.fromARGB(255, 48, 48, 48),
              ),
              onPressed: () {
                // Ação para delivery
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.local_dining,
                color: Color.fromARGB(255, 48, 48, 48),
              ),
              onPressed: () {
                // Ação para mesas
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.chat_bubble,
                color: Color.fromARGB(255, 48, 48, 48),
              ),
              onPressed: () {
                // Ação para WhatsApp
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.store,
                color: Color.fromARGB(255, 48, 48, 48),
              ),
              onPressed: () {
                // Ação para balcão
              },
            ),
          ],
        ),
      ),
    );
  }
}
