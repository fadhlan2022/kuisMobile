import 'package:flutter/material.dart';

class TextDanButton extends StatelessWidget {
  const TextDanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text dan Button beserta Row Column"),
      ),
      body: Column(
        children: [
          // Widget Column (ke bawah)
          Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Ini Text Button"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Ini Outlined Button"),
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text("Ini Contained Button")),
              ],
            ),
          ),
          // Widget Row (ke kanan)
          // Akan terjadi overflow jika layar terlalu kecil
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https://picsum.photos/200/200"),
                Image.network("https://picsum.photos/200/200"),
                Image.network("https://picsum.photos/200/200")
                // Gunakan Image.asset untuk mengambil gambar dari lokal
                // Image.asset("lokasi asset")
              ],
            ),
          ),
          // Text Field
          Expanded(
            // Ketika kalian menggunakan list view dibawah widget widget lainnya,
            // maka kalian harus menentukan ukuran untuk list view nya
            // misalkan kita menggunakan Expanded
            // yang fungsinya untuk mengatur ukuran widget dengan sisa halaman yang tersedia
            // Contoh lain bisa menggunakan Box
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Ini Text Field'),
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Ini Text Field')),
                ],
              ),
            ),
          ),
        ],
      ),

      // // Background color untuk memberi warna background pada Scaffold
      // backgroundColor: Colors.yellow,
    );
  }
}
