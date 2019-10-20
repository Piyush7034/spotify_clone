import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/lists.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class SpotifyHomePage extends StatefulWidget {
  @override
  SpotifyHomePageState createState() => SpotifyHomePageState();
}

class SpotifyHomePageState extends State<SpotifyHomePage> {
  ScrollController scrollController = ScrollController();

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
                      style: Styles.hintText,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
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
                    padding: EdgeInsets.all(10.0),
                    width: SizeConfig.screenWidth,
                    color: Colors.black,
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            'Made for you',
                            style: Styles.hintText,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 15.0, bottom: 10.0, left: 20.0, right: 20.0),
                          color: Colors.white,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: Styles.generalDetailText,
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          'Recommended for you',
                          style: Styles.headerText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.30,
                          child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: Lists.artists.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(10.0),
                                        height: SizeConfig.screenHeight * 0.2,
                                        width: SizeConfig.screenWidth * 0.6,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(Lists
                                                  .artists[index]['image']),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Text(
                                        Lists.artists[index]['item_header'],
                                        style: Styles.listItemHeaderText,
                                      ),
                                      Text(
                                        Lists.artists[index]['item_detail'],
                                        style: Styles.listItemDetailText,
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          'Popular and trending',
                          style: Styles.headerText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.30,
                          child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: Lists.artists.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: SizeConfig.screenHeight * 0.2,
                                      width: SizeConfig.screenWidth * 0.6,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Lists.artists[index]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      Lists.artists[index]['item_header'],
                                      style: Styles.listItemHeaderText,
                                    ),
                                    Text(
                                      Lists.artists[index]['item_detail'],
                                      style: Styles.listItemDetailText,
                                    )
                                  ],
                                );
                              }),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          'Sound of India',
                          style: Styles.headerText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.30,
                          child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: Lists.artists.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: SizeConfig.screenHeight * 0.2,
                                      width: SizeConfig.screenWidth * 0.5,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Lists.artists[index]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      Lists.artists[index]['item_header'],
                                      style: Styles.listItemHeaderText,
                                    ),
                                    Text(
                                      Lists.artists[index]['item_detail'],
                                      style: Styles.listItemDetailText,
                                    )
                                  ],
                                );
                              }),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          'Hindi new releases',
                          style: Styles.headerText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.30,
                          child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: Lists.artists.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: SizeConfig.screenHeight * 0.2,
                                      width: SizeConfig.screenWidth * 0.6,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Lists.artists[index]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      Lists.artists[index]['item_header'],
                                      style: Styles.listItemHeaderText,
                                    ),
                                    Text(
                                      Lists.artists[index]['item_detail'],
                                      style: Styles.listItemDetailText,
                                    )
                                  ],
                                );
                              }),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          'Punjabi new releases',
                          style: Styles.headerText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.30,
                          child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: Lists.artists.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      height: SizeConfig.screenHeight * 0.2,
                                      width: SizeConfig.screenWidth * 0.6,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Lists.artists[index]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      Lists.artists[index]['item_header'],
                                      style: Styles.listItemHeaderText,
                                    ),
                                    Text(
                                      Lists.artists[index]['item_detail'],
                                      style: Styles.listItemDetailText,
                                    )
                                  ],
                                );
                              }),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.1,
                        ),
                        ListView.builder(
                          controller: scrollController,
                          itemCount: Lists.artists.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(10.0),
                              width: SizeConfig.screenWidth * 0.8,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Because you like',
                                    style: Styles.listItemDetailText,
                                  ),
                                  Text(
                                    Lists.artists[index]['item_detail'],
                                    style: Styles.listItemHeaderText,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          width: SizeConfig.screenWidth * 0.8,
                                          alignment: Alignment.center,
                                          color: Colors.white,
                                          height:
                                              SizeConfig.screenHeight * 0.15,
                                          child: Text(
                                            'This is ' +
                                                Lists.artists[index]
                                                    ['item_detail'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black),
                                            maxLines: null,
                                          ),
                                        ),
                                        Container(
                                            height:
                                                SizeConfig.screenHeight * 0.3,
                                            width: SizeConfig.screenWidth * 0.8,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(Lists
                                                    .artists[index]['image']),
                                              ),
                                            ),
                                            child: Container()),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
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
