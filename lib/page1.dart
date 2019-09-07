import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return new Scaffold(
    body: Container(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new customCard(
              icon: Icons.home,
              teks: "Home",
              warnaIcon: Colors.pink,
            ),
            new customCard(
              icon: Icons.favorite,
              teks: "Favorite",
              warnaIcon: Colors.pink,
            ),
            new customCard(
              icon: Icons.place,
              teks: "Place",
              warnaIcon: Colors.blue,
            ),
             new customCard(
              icon: Icons.settings,
              teks: "Settings",
              warnaIcon: Colors.black,
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class customCard extends StatelessWidget {
  customCard({
    this.icon,
    this.teks,
    this.warnaIcon,
  });

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              icon,
              color: warnaIcon,
              size: 100.0
              ),
              new Text(
                teks,
                style: new TextStyle(fontSize: 20.0))
          ],
        ) 
      ),
    );   
  }
}