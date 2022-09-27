import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatelessWidget {
  final String Username;
  final String Password;
  const SecondScreen({
    Key? key,
    required this.Username, // parameter wajib
    this.Password = "flutter123" // parameter opsional dengan nilai default flutter123
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second screen"),
        automaticallyImplyLeading: false, //berfungsi untuk menghilangkan tombol back di kiri atas
      ),
      body: ElevatedButton(
        child: Text("INI LINK"),
        onPressed: (){
          _launchURL("https://instagram.com");
        },
      )
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
