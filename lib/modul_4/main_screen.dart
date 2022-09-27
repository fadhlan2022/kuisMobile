import 'package:flutter/material.dart';
import 'tourism_place.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Turis"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {

          // Instansiasi
          // dengan format
          // final namaClass namaVariabel = namaConstructor
          final TourismPlace place = tourismPlaceList[index];

          // Inkwell mirip seperti button yang bisa diklik dan ada fungsinya
          // Bedanya adalah button hanyalah sebuah tombol
          // Sedangkan Inkwell adalah container yang bisa di klik
          // ElevatedButton menggunakan onPressed, sedangkan InkWell menggunakan onTap
          return InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(username: place.name)));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(place.imageUrls[0], width: 120,),
                  Text(place.name),
                  Text(place.ticketPrice)
                ],
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}