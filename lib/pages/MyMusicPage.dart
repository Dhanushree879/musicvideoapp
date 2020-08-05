import 'package:flutter/material.dart';
import 'MusicPlayer.dart';

var blueColor = Color(0xFF090e42);

var pinkColor = Color(0xFFff6b80);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 32.0),
            CustomTextField(),
            SizedBox(height: 32.0),
            Text(
              'Collections',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                ItemCard('assets/images/filmy.jpg', 'Filmy'),
                SizedBox(
                  width: 16.0,
                ),
                ItemCard('assets/images/melody 2.jpg', 'Melody'),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              children: <Widget>[
                ItemCard('assets/images/romantic 2.jpg', 'Romantic'),
                SizedBox(
                  width: 16.0,
                ),
                ItemCard('assets/images/party 1.jpg', 'Party'),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              children: <Widget>[
                ItemCard('assets/images/classic 1.jpg', 'Classic'),
                SizedBox(
                  width: 16.0,
                ),
                ItemCard('assets/images/devotional 2.jpg', 'Devotional'),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final image;
  final title;
  ItemCard(this.image, this.title);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120.0,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      height: 140.0,
                      width: double.infinity,
                    )),
                RaisedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage1()),
                  );
                  /*Positioned(
                    right: 16.0,
                    top: 16.0,*/
                  //child:
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.white.withOpacity(0.6),
                    size: 24.0,
                  );
                  // );
                })
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.16),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search music...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.mic,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }
}
