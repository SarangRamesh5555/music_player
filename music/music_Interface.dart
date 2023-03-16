import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/music/musicinterface_reafactor.dart';
import 'package:on_audio_query/on_audio_query.dart';

class music_play extends StatelessWidget {
  /// var music_text;

 

  music_play({super.key,required this.song_Model,required this.audioPlayer}) {}

///////////////////////audio player initilizing //////////////
  final AudioPlayer audioPlayer;

  ///////////////////////////////////////////

/////////////////true or false for play buttons \\\\\\\\\\\\\\\\\

  SongModel? song_Model;

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
      
        backgroundColor:Colors.transparent,
        appBar: AppBar(
        
          shape: StadiumBorder(),
            centerTitle: true,
            title: const Text(
              "Now Playing",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.transparent,
            toolbarHeight: 35,
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => settings())),
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    size: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ))
            ]),
        body: Container(
          height: _mediaquery.height,
          width: _mediaquery.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.center,
                colors: [Color.fromARGB(255, 255, 0, 174), Color.fromARGB(255, 0, 0, 0)]),

            /*  image: DecorationImage(
                  image: AssetImage("images/mus8.jpg"), fit: BoxFit.cover)*/
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),

////////////////////////thumbnail//////////////////////////////

              musicinterface_Reafactor(
                  _mediaquery.height * 0.4, _mediaquery.width * 0.2,song_Model!.id.toInt(),1),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 49, top: 40),
                  /////////////////////msuicname////////////////////////////////
                  child: Flexible(
                    child: Text(
                      song_Model!.displayNameWOExt,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      ////////////////////////////controllerrs //////////////////////////////////////
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              musicinterface_rea2(model1: song_Model,audioPlayer:audioPlayer ,)
            ],
          ),
        ),
      ),
    );
  }
}
