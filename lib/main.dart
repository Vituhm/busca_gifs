import 'package:busca_gifs/ui/home_page.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    theme: ThemeData(hintColor: Colors.white),
  ));
}