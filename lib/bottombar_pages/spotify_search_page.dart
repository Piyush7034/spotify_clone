import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';

class SpotifySearchPage extends StatefulWidget {
  @override
  SpotifySearchPageState createState() => SpotifySearchPageState();
}

class SpotifySearchPageState extends State<SpotifySearchPage> {
  TextEditingController textController = TextEditingController();
  String text;
  String searchText;
  bool isSearching = false;
  FocusNode focusNode;
  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    if (focusNode.hasFocus) {
      setState(() {
        hasFocus = true;
      });
    } else {
      setState(() {
        hasFocus = false;
      });
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return isSearching
        ? _spotifySearchResult()
        : Scaffold(
            body: Stack(
              children: <Widget>[
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.1,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.25,
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        color: Colors.black,
                        width: SizeConfig.screenWidth,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10.0),
                              height: SizeConfig.screenHeight * 0.075,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.search),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSearching = true;
                                          FocusScope.of(context)
                                              .requestFocus(focusNode);
                                        });
                                      },
                                      child: Container(
                                        child: Text(
                                          'Search',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
  }

  Widget _spotifySearchResult() {
//    if (focusNode.hasFocus) {
//      setState(() {
//        hasFocus = true;
//      });
//    } else {
//      setState(() {
//        hasFocus = false;
//      });
//    }
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
            margin: hasFocus ? EdgeInsets.all(5.0) : EdgeInsets.all(10.0),
            height: hasFocus ? 50 : 40,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(hasFocus ? 0 : 10.0)),
            child: Row(
              children: <Widget>[
                Container(
                  color: hasFocus ? Colors.grey : Colors.transparent,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        if (focusNode.hasFocus) {
                          setState(() {
                            FocusScope.of(context).requestFocus(FocusNode());
                          });
                        } else {
                          setState(() {
                            isSearching = false;
                          });
                        }
                      }),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    style: TextStyle(color: Colors.white),
                    controller: textController,
                    focusNode: focusNode,
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
          ),
          Expanded(
            child: Container(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
