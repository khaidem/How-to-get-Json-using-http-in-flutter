import 'dart:convert';

import 'package:day8/model/newsfeeds.model.dart';
import 'package:http/http.dart' as http;

class NewsfeedRepo {
  final String baseURl =
      "https://inshortsapi.vercel.app/news?category=national";

  Future<NewsfeedModle> getData() async {
    final data = await http.get(Uri.parse(baseURl));

    final decode = json.decode(data.body);

    return NewsfeedModle.fromJson(decode);
  }
}
