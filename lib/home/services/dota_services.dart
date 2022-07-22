import '../../models/heroes.dart';
import 'package:http/http.dart' as http;

class DotaServices {
  Future<List<Heroes>?> getHeroes() async {
    var client = http.Client();
    var url = Uri.parse('https://api.opendota.com/api/heroes');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      return heroesFromJson(json);
    }
  }
}
