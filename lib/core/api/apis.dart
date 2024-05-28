import 'package:http/http.dart' as http;

Future<void> getNumFact({required int num}) async {
  final response = await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  print(response.body);
}
