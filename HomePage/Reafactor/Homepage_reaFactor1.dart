import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/Album/album.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Favorite/favorate.dart';
import 'package:music_player/PlayList/playList.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/bottomsheet/bottom_Sheet.dart';
import 'package:music_player/mostlyPlayed/mostlyPlayed.dart';
import 'package:music_player/music/music_Interface.dart';
import 'package:music_player/recentlyPlayed/recently_Played.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:unicons/unicons.dart';

//--------------------------APPBAR--------------------------------------------//
////////////////////////////////////////////////////////////////////////////////

class reaFactor1 extends StatelessWidget {
  double? height1;
  double? width1;
  Color? color1;
  reaFactor1(this.height1, this.width1, this.color1);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ),

          // icon_Button1(Icons.menu, settings(), context),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 255, 0, 200),
                        offset: Offset(1.0, 1.0),
                        blurRadius: 10,
                        spreadRadius: 4)
                  ],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 3,
                    color: all_colors,
                  )),
              child: const CircleAvatar(
                radius: 34,
                backgroundImage: AssetImage(
                  "images/musiclogo.jpg",
                ),
              ),
            ),
          ),
          icon_Button1(Icons.settings, settings(), context)
        ],
      ),
    );
  }

  Widget icon_Button1(dynamic reaIocon, Screen_nav, BuildContext context) {
    // ignore: avoid_print
    return IconButton(
      onPressed: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Screen_nav,
      )),
      icon: Icon(reaIocon),
      color: Colors.white,
      iconSize: 40,
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

/////////////////////////////SCROLL VIEW ///////////////////////////////////////

reFactor2(
    {required double height2,
    required double width2,
    required Color colors2,
    required double heiB,
    required double widB}) {
  return Container(
    height: height2,
    width: width2,
    color: colors2,
    child: Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          levatedbutton1(
            icon3: Icons.audio_file_sharp,
            button_name1: "Album",
            button_Colors1: Color.fromARGB(255, 136, 255, 0),
            heightA: heiB,
            widthA: widB,
            n_av: alBum(),
          ),
          levatedbutton1(
            icon3: Icons.playlist_add_check,
            button_name1: "PlayList",
            button_Colors1: Colors.orange,
            heightA: heiB,
            widthA: widB,
            n_av: play_List(),
          ),
          levatedbutton1(
            icon3: Icons.playlist_add_check,
            button_name1: "Mostly Played",
            button_Colors1: Color.fromARGB(255, 38, 0, 255),
            heightA: heiB,
            widthA: widB,
            n_av: mostly_Played(),
          ),
          levatedbutton1(
            icon3: Icons.playlist_add_check,
            button_name1: "Recently Played",
            button_Colors1: Color.fromARGB(255, 174, 0, 255),
            heightA: heiB,
            widthA: widB,
            n_av: recently_Played(),
          ),
        ],
      ),
    ),
  );
}

class levatedbutton1 extends StatelessWidget {
  var icon3;
  String button_name1;
  // ignore: non_constant_identifier_names
  Color button_Colors1;
  double heightA;
  double widthA;
  var n_av;

  levatedbutton1(
      {super.key,
      required this.icon3,
      required this.button_name1,
      required this.button_Colors1,
      required this.heightA,
      required this.widthA,
      required this.n_av}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: heightA,
      width: widthA,
      child: GestureDetector(
        child: ButtonTheme(
          height: heightA,
          minWidth: widthA,
          child: ElevatedButton.icon(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => n_av)),
              icon: Icon(
                icon3,
                color: Colors.white,
              ),
              label: Text(
                button_name1,
                style: const TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: button_Colors1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////list of the music//////////////////////

class reafactor3 extends StatefulWidget {
  double? height3;

  double? width4;
  Color? color3;
  double? width45;

  double? height45;
  reafactor3(
      {required this.height3,
      required this.height45,
      required this.width45,
      required this.color3,
      required this.width4}) {}

  @override
  State<reafactor3> createState() => _reafactor3State();
}

class _reafactor3State extends State<reafactor3> {
  var _controller = ScrollController();

  final OnAudioQuery _audioquery = OnAudioQuery();

  @override
  void initState() {
    _permission();
    // TODO: implement initState
    super.initState();
  }

//////////////////for the permission //////////////////////////////
  _permission() async {
    dynamic perm = await _audioquery.permissionsStatus();
    if (!perm) {
      await _audioquery.permissionsRequest();
    }
  }
//////////////////////////////////////////////////////

//////////////////////for the music controlller /////////////////
  final _player = AudioPlayer();

  play_song(String? uri) async {
    try {
      await _player.setAudioSource(AudioSource.uri((Uri.parse(uri!))));
      await _player.play();
    } on Exception {
      log("error parse");
    }
  }

  //////////////////////////////////////////////////////////////
  ///
  ///
  @override
  void dispose() {
    _player.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        color: all_colors,
        width: double.infinity,
        child: Container(
            child: Container(
                margin: const EdgeInsets.all(11),
                height: widget.height3,
                width: widget.width4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: widget.color3,
                    image: const DecorationImage(
                        image: AssetImage("images/blur3.jpg"),
                        fit: BoxFit.cover)),
                child: FutureBuilder<List<SongModel>>(
                  future: _audioquery.querySongs(
                    sortType: null,
                    orderType: OrderType.ASC_OR_SMALLER,
                    uriType: UriType.EXTERNAL,
                    ignoreCase: true,
                  ),
                  builder: (context, item) {
                    if (item.data == null) {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: Colors.white,
                      ));
                    }
                    if (item.data!.isEmpty) {
                      return const Center(
                        child: Text(
                          "nothing found",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }

                    return ListView.separated(
                        controller: _controller,
                        itemBuilder: (context, index) {
                          return Container(
                              child: ListTile(
                            ///////////////////////////////control  the music/////////////////////////
                            onTap: () {
                              print("sing");
                              // play_song(item.data![index].uri);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => music_play(
                                        audioPlayer: _player,
                                        song_Model: item.data![index],
                                      )));

                              ///n  _player.stop();
                            },
////////////////////////////////////////////////////////////////////////////////////////////////////////////
                            title: Text(
                              "${item.data![index].title}\t",
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),

                            subtitle: Text(
                              item.data![index].displayName,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  show_modelsheet(
                                      contetx: context,
                                      sheet_Height: 300,
                                      sheet_Width: double.infinity,
                                      sheet_color: Colors.blue);
                                },
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                )),

                            leading: index.isNegative
                                ? QueryArtworkWidget(
                                    size: 20,
                                    artworkBorder:
                                        const BorderRadius.horizontal(
                                            right: Radius.circular(10),
                                            left: Radius.circular(10)),
                                    id: item.data![index].id,
                                    type: ArtworkType.AUDIO)
                                :
                                /////////////////////////////////////////////////////////lead////////////////
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: widget.width45,
                                    height: widget.height45,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: const Image(
                                          image: AssetImage("images/mus3.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                          ));
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: item.data!.length);
                  },
                ))));
  }
}
