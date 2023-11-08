// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pdv_bistro2/features/authentication/presentation/controller/api_controoller.dart'; // Importe seu controller aqui
import 'package:pdv_bistro2/features/authentication/presentation/screen/ajuda/tela_ajuda.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Crie uma instância do seu ApiController com a chave de API válida
    final apiController =
        ApiController(apiKey: 'd62cac6d7fe423e36b7c0960418f5cc3');

    // Crie a tela TelaAjuda com a instância do ApiController
    final telaAjuda = TelaAjuda(apiController: apiController);

    // Crie a tela MyApp com a instância do ApiController
    final myApp = MaterialApp(home: telaAjuda);

    // Build our app and trigger a frame.
    await tester.pumpWidget(myApp);

    // Execute o teste normalmente...
  });
}
