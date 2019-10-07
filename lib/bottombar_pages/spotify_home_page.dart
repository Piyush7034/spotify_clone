import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';

class SpotifyHomePage extends StatefulWidget {
  @override
  SpotifyHomePageState createState() => SpotifyHomePageState();
}

class SpotifyHomePageState extends State<SpotifyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(color: Colors.indigo),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.1,
                  ),
                  Text(
                    'Hey',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                    child: Text(
                      'Here are some playlists based on your music taste',
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight * 0.25,
              child: SingleChildScrollView(
                child: Container(
                  height: SizeConfig.screenHeight,
                  width: SizeConfig.screenWidth,
                  color: Colors.black87,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text('Made for you'),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 15.0, bottom: 10.0, left: 20.0, right: 20.0),
                        color: Colors.white,
                      ),
                      Text('Lorem Ipsum'),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'Recommended for you',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: SizeConfig.screenHeight * 0.01,
                right: SizeConfig.screenWidth * 0.01,
                child: IconButton(icon: Icon(Icons.settings), onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
