import 'package:flutter/material.dart';
import 'package:pdv_bistro2/features/authentication/presentation/controller/api_controoller.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/ajuda/tela_ajuda.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ApiController apiController;

  const CustomAppBar({Key? key, required this.apiController}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dateText = 'Carregando...';

  @override
  void initState() {
    super.initState();
    widget.apiController.fetchDataFromAPI().then((data) {
      setState(() {
        dateText = data;
      });
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
              width: 50,
              child: Image.asset('assets/images/bistro3.png'),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Software Bistrô',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                dateText,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
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
                  builder: (context) =>
                      TelaAjuda(apiController: widget.apiController),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
