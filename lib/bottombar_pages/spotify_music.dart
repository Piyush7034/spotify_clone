import 'package:flutter/material.dart';
import 'package:spotify_clone/bottombar_pages/create_playlist.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class SpotifyMusic extends StatefulWidget {
  @override
  SpotifyMusicState createState() => SpotifyMusicState();
}

class SpotifyMusicState extends State<SpotifyMusic> {
  TextEditingController textController = TextEditingController();
  String searchArtist;

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
                Tab(text: 'Playlists'),
                Tab(text: 'Artists'),
                Tab(text: 'Albums'),
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
            _spotifyPlaylists(),
            _spotifyArtists(),
            _spotifyAlbums(),
          ],
        ),
      ),
    );
  }

  Widget _spotifyPlaylists() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.screenHeight * 0.2,
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'Create your first playlist',
              maxLines: null,
              style: Styles.headerText,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              "It's easy we'll help you.",
              maxLines: null,
              style: Styles.generalDetailText,
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
                'CREATE PLAYLIST',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _spotifyArtists() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    margin: EdgeInsets.only(
                        left: 20, right: 5.0, top: 10.0, bottom: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                      controller: textController,
                      onChanged: (String value) {
                        setState(() {
                          searchArtist = value;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(
                      left: 5.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Colors.grey,
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Text('Filters'),
                  ),
                )
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }

  Widget _spotifyAlbums() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.screenHeight * 0.2,
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'Your albums will appear here',
              maxLines: null,
              style: Styles.headerText,
            ),
          ),
        ],
      ),
    );
  }
}
