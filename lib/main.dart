import 'package:flutter/material.dart';
import 'package:pdv_bistro2/features/authentication/presentation/controller/api_controoller.dart';
import 'package:pdv_bistro2/features/authentication/presentation/screen/entrar/tela_login.dart';

void main() {
  final apiController =
      ApiController(apiKey: 'd62cac6d7fe423e36b7c0960418f5cc3');
  runApp(MyApp(apiController: apiController));
}

class MyApp extends StatelessWidget {
  final ApiController apiController;

  const MyApp({Key? key, required this.apiController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: TelaLogin(apiController: apiController),
    );
  }
}
