// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:pdv_bistro2/features/authentication/presentation/controller/api_controoller.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/ajuda/tela_ajuda.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dateText = 'Carregando...';

  final CustomAppBarController _controller = CustomAppBarController();

  @override
  void initState() {
    super.initState();
    _fetchDataFromAPI();
  }

  Future<void> _fetchDataFromAPI() async {
    final result = await _controller.fetchDateText();
    setState(() {
      dateText = result;
    });
  }

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Software Bistrô',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              Text(
                dateText,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
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
            ),
            onPressed: () {
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
