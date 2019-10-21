import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class Settings extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
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
      body: Container(
        height: SizeConfig.screenHeight,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Free Account',
                style: Styles.hintText,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 35.0,
                  width: SizeConfig.screenWidth * 0.7,
                  child: Text(
                    'GO PREMIUM',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 50,
                ),
                title: Text(
                  'Piyush Shukla',
                  style: Styles.hintText,
                ),
                subtitle: Text(
                  'View Profile',
                  style: Styles.generalDetailText,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Data Saver',
                  style: Styles.hintText,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),


//              Row(
//                children: <Widget>[
//                  Expanded(
//                    child: Container(
//                      height: 60,
//                      child: Column(
//                        children: <Widget>[
//                          Text(
//                            'Off',
//                            style: Styles.hintText,
//                          ),
//                          Text(
//                            'Sets your music quality to low and disables canvas',
//                            maxLines: null,
//                            style: Styles.listItemDetailText,
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Container(
//                    width: 20,
//                    child: SwitchListTile(
//                        value: isOn,
//                        onChanged: (bool value) {
//                          setState(() {
//                            isOn = value;
//                          });
//                        }),
//                  )
//                ],
//              )
            ],
          ),
        ),
      ),
    );
  }
}
