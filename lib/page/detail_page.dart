import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class DetailPageWidget extends StatefulWidget {
  @override
  DetailPageState createState() => new DetailPageState();
}

class DetailPageState extends State<DetailPageWidget> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text("窝日，这是个啥",
                  style: new TextStyle(fontWeight: FontWeight.bold),),

              ),
              new Text("这么多括号，妮玛啊",style: new TextStyle(color: Colors.grey[500]),)
            ],
          )),
          new Icon(Icons.star,color: Colors.red[500],),
          new Text("我特么不用了")
        ],
      ),
    );

    Column buildBtnColumn(IconData icon,String label){
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon,color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color
              ),
            ),
          )
        ],
      );
    }


    Widget btnSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildBtnColumn(Icons.call, "CALL"),
          buildBtnColumn(Icons.near_me, "CALL"),
          buildBtnColumn(Icons.share, "CALL"),
        ],
      ),
    );


    Widget textSection = new Container(
      padding:  const EdgeInsets.all(32.0),
      child: new Text('呵呵呵',softWrap: true),
    );

    return new MaterialApp(
      title: '窝草',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("勇士总冠军"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset('images/lake.jpg',width: 600.0,height: 240.0,fit: BoxFit.cover),
            titleSection,
            btnSection,
            textSection,
          ],
        ),
      ),
    );


  }
}
