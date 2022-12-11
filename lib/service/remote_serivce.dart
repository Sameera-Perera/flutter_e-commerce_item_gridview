import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static var baseURL = 'https://grocery-app-sc6n.onrender.com';

  static Future<dynamic> fetchItem(int start) async {
    var response = await client.get(
      Uri.parse('$baseURL/items?_start=$start&_limit=10'),
    );
    return response;
  }

}
