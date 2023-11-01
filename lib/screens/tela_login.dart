import 'package:flutter/material.dart';

class LoginBistro extends StatelessWidget {
  const LoginBistro({Key? key}) : super(key: key);

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
              Icons.image,
              color: Colors.white, // Ícone branco
            ),
            onPressed: () {
              // Ação quando a imagem for clicada
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity, // Defina o tamanho que desejar
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'CPF',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 48, 48, 48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.delivery_dining,
                color: Colors.white,
              ),
              onPressed: () {
                // Ação para delivery
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.local_dining,
                color: Colors.white,
              ),
              onPressed: () {
                // Ação para mesas
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              onPressed: () {
                // Ação para WhatsApp
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.store,
                color: Colors.white,
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
