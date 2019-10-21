import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class SpotifyPremiumPage extends StatefulWidget {
  @override
  SpotifyPremiumPageState createState() => SpotifyPremiumPageState();
}

class SpotifyPremiumPageState extends State<SpotifyPremiumPage> {
  ScrollController scrollController = ScrollController();
  int index = 0;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, 0.0),
            end: Alignment(0.0, 0.2),
            colors: [
              Colors.green,
              Colors.black,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Get more out of your music with Premium',
                  maxLines: null,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                height: SizeConfig.screenHeight * 0.3,
                child: ListView.builder(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 16.0,
                      margin: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: SizeConfig.screenHeight * 0.2,
                        width: SizeConfig.screenWidth * 0.8,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Ad breaks',
                                  style: Styles.listItemHeaderText,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Ad-free music',
                                  style: Styles.listItemHeaderText,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 2.5,
                        backgroundColor:
                            index == 0 ? Colors.green : Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 2.5,
                        backgroundColor:
                            index == 1 ? Colors.green : Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 2.5,
                        backgroundColor:
                            index == 2 ? Colors.green : Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.screenWidth * 0.7,
                  child: Text(
                    'GET PREMIUM',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Text(
                'Only Rs. 119.00/month after.Terms and Conditions apply.',
                style: Styles.listItemDetailText,
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                elevation: 16,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                  height: SizeConfig.screenHeight * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Spotify Free',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Current Plan',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              _premiumCard('Premium Individual', Colors.blue),
              _premiumCard('Premium Student', Colors.deepOrange),
              _premiumCard('Premium Individual', Colors.deepPurple)
            ],
          ),
        ),
      ),
    );
  }

  Widget _premiumCard(String offer, Color color) {
    return Card(
      color: color,
      margin: EdgeInsets.all(10.0),
      child: Container(
        height: SizeConfig.screenHeight * 0.6,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.screenHeight * 0.075,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  offer,
                  style: Styles.listItemHeaderText,
                ),
                Text(
                  'Free(for three months)',
                  style: Styles.listItemDetailText,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.13,
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10.0),
                width: SizeConfig.screenWidth * 0.7,
                child: Text(
                  'GET PREMIUM',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.2,
            ),
            Text(
              'Only Rs. 119.00/month after. Terms and Conditions apply',
              style: Styles.listItemDetailText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  scrollListener() {
    if (scrollController.offset > 0 &&
        scrollController.offset <= SizeConfig.screenWidth * 0.6) {
      setState(() {
        index = 0;
      });
    }
    if (scrollController.offset > SizeConfig.screenWidth * 0.6 &&
        scrollController.offset <= SizeConfig.screenWidth * 1.2) {
      setState(() {
        index = 1;
      });
    }
    if (scrollController.offset > SizeConfig.screenWidth * 1.4 ) {
      setState(() {
        index = 2;
      });
    }
  }
}
