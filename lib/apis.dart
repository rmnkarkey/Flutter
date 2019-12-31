import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Posts{
  var details;
  var bodys;
   Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull('https://jsonplaceholder.typicode.com/posts/1'),
      headers: {
        'Accept':'application/json'
      }
    );
    // print(response.body);
    // print(response.body);
    details = response.body;
    var result = json.decode(response.body);
     bodys = result['body'];
    // print(details);
    return details;
    
  }
}