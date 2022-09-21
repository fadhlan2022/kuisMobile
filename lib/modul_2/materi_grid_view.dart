import 'package:flutter/material.dart';

class MateriGridView extends StatelessWidget {
  const MateriGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView(
        // GridDelegate untuk memberi batasan berapa banyak item pada satu baris pada grid
        // Disini contoh batasannya adalah 3
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
        ],
      ),
    );
  }
}
