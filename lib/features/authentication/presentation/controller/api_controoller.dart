import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiController {
  final String apiKey;

  ApiController({required this.apiKey});

  Future<String> fetchDataFromAPI() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Sao%20Paulo,BR&appid=$apiKey&units=metric');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final dt = data['dt'];
      final dateTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
      final day = dateTime.day;
      final month = dateTime.month;
      final year = dateTime.year;
      return '$day $month $year';
    } else {
      return 'Erro ao carregar data';
    }
  }
}
