// ignore_for_file: non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Favorite/favorate.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/Serch.dart/serchPage1.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic _index = 0;
  List _pages = [home_page1(), serch_Page1(), favorate()];

  @override
  Widget build(BuildContext context) {
    var media_query = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: all_colors,
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
/////////////////////////////////////////////////mini player /////////////////////////////

                Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // image: const DecorationImage(
                      //     image: AssetImage(
                      //       "images/mus5.jpg",
                      //     ),
                      //     fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(25),
                      color:Colors.transparent,
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 85),
                          width: 1)),
                  child: ListTile(
                    title: const Text(
                      "name",overflow:TextOverflow.fade,maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    leading: const FittedBox(
                      child: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "images/mus4.jpg",
                            )),
                      ),
                    ),
                    trailing: FittedBox(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => print("name "),
                            icon: const Icon(
                              Icons.skip_previous,
                              size: 50,
                              color: Color.fromARGB(255, 255, 0, 85),
                            ),
                          ),
                          IconButton(
                            onPressed: () => print("name "),
                            icon: const Icon(
                              Icons.play_circle_outline,
                              size: 50,
                              color: Color.fromARGB(255, 255, 0, 85),
                            ),
                          ),
                          IconButton(
                            onPressed: () => print("name "),
                            icon: const Icon(
                              Icons.skip_next,
                              size: 50,
                              color: Color.fromARGB(255, 255, 0, 85),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CurvedNavigationBar(
                    backgroundColor: all_colors,
                    index: _index,
                    buttonBackgroundColor: Color.fromARGB(255, 255, 0, 247),
                    onTap: (value) => setState(() {
                          _index = value;
                        }),
                    color: all_colors,
                    height: 50,
                    items: const [
                      Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ]),
              ],
            ),
            body: _pages[_index]));
  }
}
