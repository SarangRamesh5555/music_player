import 'package:flutter/material.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Favorite/reaFactor_Favorite.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/music/music_Interface.dart';

class favorate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;

  
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: all_colors,
          leading: IconButton(
              onPressed: () => print("name"),
              icon: const Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 255, 0, 0),
                size: 40,
              )),
          title: const Text(
            "Favoraite ",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => settings()));
                },
                icon:const  Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 40,
                ))
          ],
        ),
        body: Container(
          height: _mediaquery.height,
          width: _mediaquery.width,
          color: all_colors,
          child: ListView(
            children: [
              // FreaFactor1(_mediaquery.height * 0.12, _mediaquery.width,
              //     Color.fromARGB(255, 0, 0, 0)),

              ///////////////////////////////list//////////////////////
            const   SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => home_page1()));
                },
                child: Flist(_mediaquery.height * 0.9, _mediaquery.width),
              )
            ],
          ),
        ),
      ),
    );
  }
}
