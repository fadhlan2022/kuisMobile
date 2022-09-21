import 'package:flutter/material.dart';
// Contoh pemanggilan class ditempat lain agar bisa digunakan
import 'modul_2/text_dan_button.dart';
import 'modul_2/materi_grid_view.dart';
import 'modul_3/login_page.dart';
import 'modul_3/login_pageful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Untuk memanggil nama class pada directory lain, import terlebih dahulu class tersebut diatas
    // Setelah diimport, panggil nama class tersebut
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPageFul(),
    );
  }
}

