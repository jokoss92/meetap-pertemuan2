import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Movie Card"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new customCard(
              xImage: "images/spiderman.jpeg",
              xIcon: Icons.favorite,
              xIconColor: Colors.pink,
              xIconSize: 25.00,
              xTitle: "Spider-Man: Far from Home",
              xSubtitle: "Peter Parker dan teman-temannya melakukan perjalanan musim panas ke Eropa. Namun, mereka hampir tidak dapat beristirahat - Peter harus setuju untuk membantu Nick…",
              xCaptionButtonLeft: "Detail",
              xCaptionButtonRight: "Favourite",
            ),
            new customCard(
              xImage: "images/alita.jpg",
              xIcon: Icons.favorite,
              xIconColor: Colors.pink,
              xIconSize: 25.00,
              xTitle: "Alita: Battle Angel",
              xSubtitle: "Ketika Alita terbangun tanpa ingatan tentang siapa dia di dunia masa depan yang tidak dia kenal, dia ditangkap oleh Ido, seorang dokter yang penuh kasih yang menyadari…",
              xCaptionButtonLeft: "Detail",
              xCaptionButtonRight: "Favourite",
            ),
          ],),
      )
    );
  }
}

class customCard extends StatelessWidget {
  final IconData xIcon; 
  final Color xIconColor;
  final double xIconSize;
  final String xTitle, xSubtitle, xCaptionButtonRight, xCaptionButtonLeft,xImage;
  
  customCard({
    this.xIcon,
    this.xIconColor,
    this.xIconSize,
    this.xImage,
    this.xTitle,
    this.xSubtitle,
    this.xCaptionButtonLeft,
    this.xCaptionButtonRight,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                xImage, 
                fit: BoxFit.fill,),
                title: Text(xTitle),
                subtitle: Text(xSubtitle),
                trailing: Icon(
                  xIcon,
                  color: xIconColor,
                ),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: new Text(xCaptionButtonLeft),
                    onPressed: (){},
                  ),
                  FlatButton(
                    child: new Text(xCaptionButtonRight),
                    onPressed: (){},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}