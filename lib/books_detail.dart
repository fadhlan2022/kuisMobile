import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'books_data.dart';

class BooksDetail extends StatefulWidget {
  final BooksData books;
  const BooksDetail({Key? key, required this.books}) : super(key: key);

  @override
  _BooksDetailState createState() => _BooksDetailState();
}

class _BooksDetailState extends State<BooksDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isFavorite) ? Colors.lightBlueAccent : Colors.white,
      appBar: AppBar(
        title: Text("${widget.books.title}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: (MediaQuery
                  .of(context)
                  .size
                  .height)/1,
              child:
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal:1),
                    child: Image.network(widget.books.imageLinks),
                  );
                },
                itemCount: widget.books.imageLinks.length,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBesar(widget.books.title),
                  SizedBox(height: 20,),
                  textSedang(widget.books.description),
                  SizedBox(height: 10,),
                  textSedang("Author:"),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height)/10,
                    width: (MediaQuery.of(context).size.width),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: widget.books.authors.length,
                      ),
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            textSedang(widget.books.authors[index])
                          ],
                        );
                      },
                      itemCount: widget.books.authors.length,
                    ),
                  ),
                  SizedBox(height: 10,),
                  textBesar("Tanggal Rilis : " + widget.books.publishedDate),
                  SizedBox(height: 20,),
                  textSedang("Category: "),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height)/20,
                    width: (MediaQuery.of(context).size.width),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: widget.books.categories.length,
                      ),
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            textSedang(widget.books.categories[index])
                          ],
                        );
                      },
                      itemCount: widget.books.categories.length,
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        _launchURL(widget.books.previewLink);
                      },
                      child: Text("Halaman Website"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textBesar(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 12),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
