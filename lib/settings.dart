import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/styles.dart';

class Settings extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Settings',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Free Account',
              style: Styles.hintText,
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 5.0,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'GO PREMIUM',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.account_circle),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Piyush Shukla',
                            style: Styles.hintText,
                          ),
                          Text(
                            'View Profile',
                            style: Styles.generalDetailText,
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Text(
              'Data Saver',
              style: Styles.hintText,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Off',
                        style: Styles.hintText,
                      ),
                      Text(
                        'Sets your music quality to low and disables canvas',
                        maxLines: null,
                        style: Styles.listItemDetailText,
                      ),
                    ],
                  ),
                ),
                SwitchListTile(
                    value: isOn,
                    onChanged: (bool value) {
                      setState(() {
                        isOn = value;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
