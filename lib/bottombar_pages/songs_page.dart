import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class SongsPage extends StatefulWidget {
  final String image;
  final String header;
  final List<String> songs;

  const SongsPage({Key key, this.image, this.header, this.songs})
      : super(key: key);

  @override
  SongsPageState createState() => SongsPageState();
}

class SongsPageState extends State<SongsPage> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('This is ' + widget.header),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: SizeConfig.screenHeight * 0.25,
                  width: SizeConfig.screenWidth,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                    ),
                  ),
                ),
                Text(
                  'This is ' + widget.header,
                  style: Styles.hintText,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'BY SPOTIFY - 25K LIKES',
                  style: Styles.listItemDetailText,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.40,
                ),
                Container(
                  color: Colors.black,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: widget.songs.length,
                              shrinkWrap: true,
                              controller: scrollController,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  widget.songs[index],
                                                  style:
                                                      Styles.listItemHeaderText,
                                                ),
                                                Text(
                                                  'Your favourite artists',
                                                  style:
                                                      Styles.listItemDetailText,
                                                )
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                              ),
                                              onPressed: null),
                                          CircleAvatar(
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                ),
                                                onPressed: null),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.more_vert,
                                                color: Colors.white,
                                              ),
                                              onPressed: null),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                    )
                                  ],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: SizeConfig.screenHeight * 0.004,
                        left: SizeConfig.screenWidth * 0.40,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.green,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'PLAY',
                            style: Styles.listItemHeaderText,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
