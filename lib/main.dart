import 'package:flutter/material.dart';
// import 'package:praktikum_mobile_plug_b/menu_list.dart';
import 'package:praktikum_mobile_si/books_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BooksList(),
    );
  }
}
