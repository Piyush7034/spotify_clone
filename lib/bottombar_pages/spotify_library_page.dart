import 'package:flutter/material.dart';
import 'package:spotify_clone/bottombar_pages/spotify_music.dart';
import 'package:spotify_clone/bottombar_pages/spotify_podcasts.dart';
import 'package:spotify_clone/utils/size_config.dart';

class SpotifyLibraryPage extends StatefulWidget {
  @override
  SpotifyLibraryPageState createState() => SpotifyLibraryPageState();
}

class SpotifyLibraryPageState extends State<SpotifyLibraryPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.12),
          child: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Music'),
                Tab(text: 'Podcasts'),
              ],
              labelStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SpotifyMusic(),
            SpotifyPodcasts(),
          ],
        ),
      ),
    );
  }
}
