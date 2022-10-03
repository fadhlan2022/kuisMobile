import 'package:flutter/material.dart';
import 'package:praktikum_mobile_si/books_data.dart';
import 'books_detail.dart';

class BooksList extends StatefulWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Buku"),
      ),
      body: GridView.builder(
        itemCount: booksData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final BooksData books = booksData[index];
            return Card(
                child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                      return BooksDetail(books: books);
              }));
            },
            child: Container(
              height: (MediaQuery.of(context).size.height)/4,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                 children: [
                  Image.network(
                    books.imageLinks, fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width, 
                    color: Colors.black45, 
                    colorBlendMode: BlendMode.darken,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textAlignLeftWhite(books.title),
                      Container(
                      height: 35,
                      ),
                    ],
                  )
                  ],
              ),
            ),
                ),
            );
          },
      ),
    );
  }
}

Widget textAlignLeftWhite(String text){
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(
      color: Colors.white,
      fontSize: 30,
    ),
  );
}