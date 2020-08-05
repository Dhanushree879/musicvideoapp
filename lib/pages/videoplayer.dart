import 'package:flutter/material.dart';
import 'package:musicvideo/pages/MusicPlayer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  String videoURL = "https://www.youtube.com/watch?v=PMCu0JtizCk";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'Dil Bechara - Title Track | Sushant Singh Rajput | Sanjana Sangi | A.R. Rahman | Mukesh C | Amitabh B ',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            Spacer(),
            Container(
              child: Text(
                '"He put his heart and soul into his craft.\nHe was bothered more about research that make up.\nHe was about quality not vanity.\nHe was a bright star.\nThats why he shined sheer magic". \n                We Miss You!!!',
                style: TextStyle(color: Colors.amberAccent, fontSize: 26.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
