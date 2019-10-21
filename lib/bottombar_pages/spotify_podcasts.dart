import 'package:flutter/material.dart';
import 'package:spotify_clone/bottombar_pages/create_playlist.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class SpotifyPodcasts extends StatefulWidget {
  @override
  SpotifyPodcastsState createState() => SpotifyPodcastsState();
}

class SpotifyPodcastsState extends State<SpotifyPodcasts> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.1),
          child: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Episodes'),
                Tab(text: 'Downloads'),
                Tab(text: 'Shows'),
              ],
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _spotifyEpisodes(),
            _spotifyDownloads(),
            _spotifyShows(),
          ],
        ),
      ),
    );
  }

  Widget _spotifyEpisodes() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'Looking for something to listen to?',
              maxLines: null,
              style: Styles.headerText,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CreatePlayList()),
                );
              },
              child: Text(
                'BROWSE PODCASTS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _spotifyDownloads() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'No downloads yet',
              maxLines: null,
              style: Styles.headerText,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              "Tap down on an episode to listen without a conection",
              maxLines: null,
              style: Styles.generalDetailText,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CreatePlayList()),
                );
              },
              child: Text(
                'BROWSE PODCASTS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _spotifyShows() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              "You haven't followed any podcasts yet.",
              maxLines: null,
              style: Styles.headerText,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              "When you follow a podcast,you'll get new episodes automatically.",
              maxLines: null,
              style: Styles.generalDetailText,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CreatePlayList()),
                );
              },
              child: Text(
                'BROWSE PODCASTS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
