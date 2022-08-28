import 'package:api_ornek0/models/model.dart';
import 'package:http/http.dart' as http;

class HomeServices {
  List<HomeResponse> homeResponseList = [];

  getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);

    homeResponseList = homeResponseFromJson(response.body);

    print(homeResponseList[0].body);
  }
}
