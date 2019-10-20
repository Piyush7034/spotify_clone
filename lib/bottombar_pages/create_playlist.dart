import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/size_config.dart';
import 'package:spotify_clone/utils/styles.dart';

class CreatePlayList extends StatefulWidget {
  @override
  CreatePlayListState createState() => CreatePlayListState();
}

class CreatePlayListState extends State<CreatePlayList> {
  TextEditingController textController = TextEditingController();
  String text;

  @override
  Widget build(BuildContext context) {
    SizeConfig().getDimensions(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.screenHeight * 0.25,
            ),
            Text(
              'Give your playlist a name',
              style: Styles.hintText,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                autofocus: true,
                controller: textController,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
                onChanged: (String value) {
                  setState(() {
                    text = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    textController.clear();
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }


}
