import 'package:flutter/material.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Favorite/favorate.dart';
import 'package:music_player/Home/Home.dart';
import 'package:music_player/HomePage/Reafactor/Homepage_reaFactor1.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/Serch.dart/serchPage1.dart';
import 'package:music_player/Settings/settingOptions.dart/about.dart';
import 'package:music_player/Settings/settingOptions.dart/privacyPolicy.dart';
import 'package:music_player/Settings/settingOptions.dart/termCondtions.dart';
import 'package:music_player/Settings/settingOptions.dart/themes.dart';

class settings extends StatelessWidget {
  final List Name_of_Setting = [
    "About",
    "Themes",
    "privacy&Policy",
    "Terms&Conditions"
  ];
  final List Nav_of_Setting = [
    about_(),
    The_mes(),
    privacy_Policy(),
    terms_conditions(),
    terms_conditions()
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: all_colors,
        leading: GestureDetector(
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        actions: [
          GestureDetector(
              child: IconButton(
                  onPressed: () => print("name"),
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  )))
        ],
      ),
      body: Container(
          color: all_colors,
          width: _mediaquery.width,
          height: _mediaquery.height,
          child: ListView.separated(
              itemBuilder: ((context, index) {
                return Card(
                  shape: const StadiumBorder(),
                  shadowColor: const Color.fromARGB(255, 255, 252, 255),
                  color: all_colors,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 17, 18, 17),
                    ),
                    margin: const EdgeInsets.only(left: 2, right: 2),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => Nav_of_Setting[index])));
                      },
                      title: Text(
                        (Name_of_Setting[index]),
                        selectionColor: Colors.pink,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Nav_of_Setting[index])),
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )),
                    ),
                  ),
                );
              }),
              separatorBuilder: ((context, index) {
                return const SizedBox(
                  height: 20,
                );
              }),
              itemCount: Name_of_Setting.length)),
    );
  }
}
