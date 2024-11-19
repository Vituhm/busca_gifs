import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _gifData["title"] ?? "GIF",
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: const Icon(Icons.share),
              onPressed: (){
                Share.share(_gifData["images"]["fixed_height"]["url"]);
              },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}