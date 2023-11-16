// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pdv_bistro2/Theme/custom_color_scheme.dart';
import 'package:pdv_bistro2/features/authentication/presentation/controller/api_controller.dart';
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
      backgroundColor: customColorScheme.inverseSurface,
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
              Text('Software Bistrô',
                  style: TextStyle(
                    fontSize: 26,
                    color: customColorScheme.surfaceTint,
                  )),
              Text(
                dateText,
                style: TextStyle(
                  fontSize: 12,
                  color: customColorScheme.surfaceTint,
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
            icon: Icon(
              Icons.live_help,
              color: customColorScheme.surfaceTint,
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
