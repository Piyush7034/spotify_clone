import 'package:bottom_personalized_dot_bar/bottom_personalized_dot_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  String itemSelected = 'item-1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.purpleAccent,
          ),
          BottomPersonalizedDotBar(
            keyItemSelected: itemSelected,
            doneText: 'Done',
            settingTitleText: 'Your Menu',
            settingSubTitleText: 'Drag and drop options',
            iconSettingColor: const Color(0xFFFFD201),
            buttonDoneColor: const Color(0xFFFFD500),
            settingSubTitleColor: const Color(0xFFFECE02),
            items: <BottomPersonalizedDotBarItem>[
              BottomPersonalizedDotBarItem('item-1',
                  icon: Icons.home, name: 'icon-1', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-2',
                  icon: Icons.search, name: 'icon-2', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-3',
                  icon: Icons.settings, name: 'icon-3', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-4',
                  icon: Icons.library_music, name: 'icon-4', onTap: (tap) {}),
            ],
            hiddenItems: <BottomPersonalizedDotBarItem>[
              BottomPersonalizedDotBarItem('item-5',
                  icon: Icons.home, name: 'icon-5', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-6',
                  icon: Icons.search, name: 'icon-6', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-7',
                  icon: Icons.settings, name: 'icon-7', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-8',
                  icon: Icons.library_music, name: 'icon-8', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-9',
                  icon: Icons.home, name: 'icon-9', onTap: (tap) {}),
              BottomPersonalizedDotBarItem('item-10',
                  icon: Icons.home, name: 'icon-10', onTap: (tap) {}),
            ],
          ),
        ],
      ),
    );
  }
}
