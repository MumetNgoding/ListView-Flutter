import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "List View Course",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("ListView Course"),
      ),
      //membuat list view
      body: new ListView(
        children: <Widget>[
          // new ListTile(
          //   leading: new Icon(Icons.book),
          //   title: new Text("Speaker"),
          // )

          new ListParsing(
            gambar:
                "https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582748_960_720.png",
            judul: "HTML",
          ),
          new ListParsing(
            gambar:
                "https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582747_960_720.png",
            judul: "CSS",
          ),
          new ListParsing(
            gambar:
                "https://ih1.redbubble.net/image.331026256.5654/aps,650x642,small,transparent-pad,750x1000,f8f8f8.u5.jpg",
            judul: "KOTLIN",
          ),
          new ListParsing(
            gambar:
                "https://ih1.redbubble.net/image.418233732.0994/flat,800x800,075,f.u1.jpg",
            judul: "JAVA",
          )
        ],
      ),
    );
  }
}

//parsing card data
class ListParsing extends StatelessWidget {
  ListParsing({this.gambar, this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0), //memberi jarak gambar
      child: new Center(
        child: new Row(
          //dari column diganti row supaya rata kiri
          children: <Widget>[
            new Image.network(gambar, width: 120.0),
            // new Text(
            //   judul,
            //   style: new TextStyle(fontSize: 20.0),
            // )
            //new Design
            new Container(
              // ini adalah settingan text
              padding: new EdgeInsets.all(10.0), //mengatur supaya rata kekanan
              child: Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text("lorem dolor sit amet ......",
                      style: new TextStyle(fontSize: 20.0, color: Colors.red))
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
