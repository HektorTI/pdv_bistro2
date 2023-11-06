import 'package:flutter/material.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/ajuda/tela_ajuda.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(
      56.0); // Defina a altura desejada da barra de aplicativos

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 48, 48, 48),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 50, // Largura do espaço para a imagem da empresa
              child: Image.asset('assets/images/bistro3.png'),
            ),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Software Bistrô',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              Text('3 Novembro 2023',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(
              Icons.live_help,
              color: Colors.white,
              // Ícone branco
            ),
            onPressed: () {
              // Ação quando a imagem for clicada
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TelaAjuda(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
