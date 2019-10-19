import 'package:flutter/material.dart';
import 'package:spotify_clone/bottombar_pages/spotify_home_page.dart';
import 'package:spotify_clone/utils/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static List<Widget> bottomBarPages = <Widget>[
    SpotifyHomePage(),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return SafeArea(
      child: Scaffold(
        body: bottomBarPages[selectedIndex],
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: SizeConfig.screenHeight * 0.1,
            color: Colors.black54,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            }),
                        Text('Home',
                            style: TextStyle(
                                color: selectedIndex == 0
                                    ? Colors.white
                                    : Colors.grey))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              color: selectedIndex == 1
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            }),
                        Text('Search',
                            style: TextStyle(
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : Colors.grey))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.library_music,
                              color: selectedIndex == 2
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            }),
                        Text('Your Library',
                            style: TextStyle(
                                color: selectedIndex == 2
                                    ? Colors.white
                                    : Colors.grey))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.account_circle,
                              color: selectedIndex == 3
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIndex = 3;
                              });
                            }),
                        Text('Premium',
                            style: TextStyle(
                                color: selectedIndex == 3
                                    ? Colors.white
                                    : Colors.grey))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSelectIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
