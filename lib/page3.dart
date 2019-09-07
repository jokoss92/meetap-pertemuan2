import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final KataAcak = WordPair.random();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("English Word"),
      ),
      body: new Center(
        child: KataAcak(),
      ),
    );
  }
}

class KataAcak extends StatefulWidget {
  @override
  _KataAcakState createState() => new _KataAcakState();
}

class _KataAcakState extends State<KataAcak> {
  @override
  Widget build(BuildContext context) {
    final WordPair kata = new WordPair.random();
    return Text(kata.asUpperCase);
  }
}