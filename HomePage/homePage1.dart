import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/HomePage/Reafactor/Homepage_reaFactor1.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/music/music_Interface.dart';

class home_page1 extends StatelessWidget {
  const home_page1({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
      child:    ListView   (
        shrinkWrap: true,
          children: [
        Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "images/musiclogo.jpg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        width: 150,
        backgroundColor: all_colors,
      ),
      //: Colors.black,
      /*  floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("namr"),
        hoverColor: Colors.pink,
      ),*/
      body: Container(
        color: all_colors,
        /*  height: _mediaquery.height,
        width: _mediaquery.width,
        color: Color.fromARGB(255, 0, 0, 0),*/
        child: ListView(
          children: [
            ////////////appbar /////////////////
            reaFactor1(
              _mediaquery.height * 0.4,
              _mediaquery.width * 0.2,
              all_colors,
            ),
            SizedBox(
              height: 20,
            ),
            ////////////// playlist and recent play     /////////////////////
            reFactor2(
                height2: _mediaquery.height * 0.1,
                width2: _mediaquery.width,
                colors2: all_colors,
                heiB: _mediaquery.height * 0.50,
                widB: _mediaquery.width * 0.3),
            // reFactor2(
            //     _mediaquery.height * 0.1,
            //     _mediaquery.width,
            //     colors2: Color.fromARGB(255, 0, 0, 0),
            //     _mediaquery.height * 0.1,
            //     _mediaquery.width * 0.3),
            ///////////////////////////////////////////////////////////
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "All Songs ",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
            ),

            const SizedBox(
              height: 5,
              width: 20,
            ),

            ////////////////////////////////////////////lsit of music///////
            Column(
              children: [
                reafactor3(
                    height3: _mediaquery.height * 0.7,
                    height45: _mediaquery.height * 0.11,
                    width45: _mediaquery.width * 0.12,
                    color3: all_colors,
                    width4: _mediaquery.width)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
