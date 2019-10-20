import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';

class SpotifySearchResult extends StatefulWidget {
  @override
  SpotifySearchResultState createState() => SpotifySearchResultState();
}

class SpotifySearchResultState extends State<SpotifySearchResult> {
  TextEditingController textController = TextEditingController();
  String text;
  String searchText;

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: <Widget>[
          Container(
            color: Colors.grey,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    controller: textController,
                    onChanged: (String value) {
                      setState(() {
                        text = value;
                      });
                    },
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        searchText = text;
                        textController.clear();
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
