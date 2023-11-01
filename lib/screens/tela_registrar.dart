import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro2/screens/esqueceu_senha.dart';

class TelaRegsitrar extends StatelessWidget {
  const TelaRegsitrar({Key? key}) : super(key: key);

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
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'CPF',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Comfirme senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      color: const Color.fromARGB(255, 48, 48, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minWidth: 300,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EsqueceuSenha(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "ENTRAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Ja tem uma conta?  ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Cor do texto "Faça seu"
                            ),
                          ),
                          TextSpan(
                            text: 'Entrar Agora',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue, // Cor do texto "Login"
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Ação ao tocar em "Login"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EsqueceuSenha(),
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
