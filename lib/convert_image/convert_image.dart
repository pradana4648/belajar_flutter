import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ConvertImage extends StatefulWidget {
  const ConvertImage({Key? key}) : super(key: key);

  @override
  State<ConvertImage> createState() => _ConvertImageState();
}

class _ConvertImageState extends State<ConvertImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Converting Image'),
      ),
      body: FutureBuilder<List<String>>(
        future: getImageUrl(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('No data yet');
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Image.network(snapshot.data![index]);
              },
            );
          }
        },
      ),
    );
  }
}

Future<List<String>> getImageUrl() async {
  final response = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos?_limit=1000'));
  if (response.statusCode == 200) {
    return compute(parsePhotos, response.body);
  } else {
    return [];
  }
}

List<String> parsePhotos(String responseBody) {
  final parsedPhotosUrl = (jsonDecode(responseBody) as List)
      .cast<Map<String, dynamic>>()
      .map((json) => json['url'] as String)
      .toList();

  return parsedPhotosUrl;
}
