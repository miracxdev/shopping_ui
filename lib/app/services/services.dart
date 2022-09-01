import 'package:api_ornek0/app/models/response/model.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<List<HomeResponse>?> getHomeData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);

    print('Response body: ${response.body}');

    return homeResponseFromJson(response.body);
  }
}
