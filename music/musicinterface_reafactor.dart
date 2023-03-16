import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:on_audio_query/on_audio_query.dart';

/////////////////////interface image in music //////////////////////////////////////

Widget musicinterface_Reafactor(var mHeight, var mWidth, int i_D, index) {
  return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 50),
      child: index.isOdd
          ? Container(
              height: 300,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.pink),
                  borderRadius: BorderRadius.circular(30)),
              child: QueryArtworkWidget(
                  artworkFit: BoxFit.cover,
                  id: i_D,
                  type: ArtworkType.AUDIO,
                  artworkBorder: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            )
          : Container(
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 20,
              ),
              height: mHeight,
              width: mWidth,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromARGB(255, 255, 0, 144)),
                image: const DecorationImage(
                    image: AssetImage(
                      "images/mus6.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(40),
              ),
            ));
}
/////////////////////////////////music controller icons/////////////////////////////////

class musicinterface_rea2 extends StatefulWidget {
  final AudioPlayer _player = new AudioPlayer();

  // IconData music_Icon_rea3;
  final AudioPlayer audioPlayer;
  dynamic model1;
  musicinterface_rea2(
      {super.key, required this.model1, required this.audioPlayer});

  @override
  State<musicinterface_rea2> createState() => _musicinterface_rea2State();
}

class _musicinterface_rea2State extends State<musicinterface_rea2> {
  var _a = SizedBox(
    width: 25,
  );
/////////////////////////////////////////////////////////////
  ///
  bool _isplaying = false;

//////////////////////////////////////////////// final AudioPlayer _player = AudioPlayer();

/////////////////////////////////////////////////////////
  ///
  ///
  @override
  void initState() {
    _playing_Song();
    // TODO: implement initState
    super.initState();
  }

  Duration duration = Duration();
  Duration position = Duration();

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;

    double vaLue = 50;
    return Container(
        color: Colors.black,
        height: _mediaquery.height * 0.25,
        width: _mediaquery.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.list_alt_rounded,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 255, 17, 0),
                    )),
              ],
            ),
            Row(
              children: [
                 Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Text(position.toString().split(".")[0],
 style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Container(
                      width: _mediaquery.width * 0.7,
                      child: Slider(
                        inactiveColor: const Color.fromARGB(255, 255, 255, 255),
                        activeColor: const Color.fromARGB(255, 255, 0, 212),
                        thumbColor: const Color.fromARGB(255, 255, 0, 208),
                        value: 0.0,
                        max:20,
                        min: 0,

                        ///   divisions: 5,
                        onChanged: (value) => setState(() {
                          vaLue = value;
                        }),
                      )),
                ),
               Padding(
                  padding: EdgeInsets.only(right: 1),
                  child: Text(
                  duration.toString().split(".")[0],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 6, right: 7),
              height: _mediaquery.height * 0.1,
              width: _mediaquery.width,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print("loop");
                    },
                    icon: const Icon(
                      Icons.loop,
                      size: 30,
                    ),
                    color: Colors.pink,
                  ),
                  //////////////////////////////
                  _a,
                  IconButton(
                    onPressed: () async {
                      widget.audioPlayer.hasNext
                          ? widget.audioPlayer.seekToNext()
                          : null;
                    },
                    ///////////////////////////
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 40,
                    ),

                    color: Colors.pink,
                  ),
                  _a,
                  ////////////////////////////////////
                  IconButton(
                    onPressed: () async {
                      if (widget.audioPlayer.playing) {
                        await widget.audioPlayer.pause();
                      } else {
                        widget.audioPlayer.play();
                      }
                      audioplay();
                    },
                    icon: _isplaying
                        ? const Icon(
                            Icons.pause,
                            size: 40,
                          )
                        : const Icon(
                            Icons.play_circle_outline_outlined,
                            size: 40,
                          ),
                    color: Color.fromARGB(255, 255, 0, 85),
                  ),
                  _a,
                  ////////////////////////////////
                  StreamBuilder<SequenceState?>(
                    stream: widget.audioPlayer.sequenceStateStream,
                    builder: (_, __) {
                      return IconButton(
                        onPressed: () {
                          widget.audioPlayer.hasNext
                              ? widget.audioPlayer.seekToNext()
                              : null;
                        },
                        icon: const Icon(
                          Icons.skip_next,
                          size: 40,
                        ),
                        color: Colors.pink,
                      );
                    },
                  ),
                  _a,
                  /////////////////////////////
                  IconButton(
                    onPressed: () {
                      setState(() {
                        onShuffleButtonPressed();
                      });
                    },
                    icon: const Icon(
                      Icons.shuffle,
                      size: 30,
                    ),
                    color: Colors.pink,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  void _playing_Song() async {
    try {
      widget.audioPlayer
          .setAudioSource(AudioSource.uri((Uri.parse(widget.model1!.uri))));
      widget.audioPlayer.play();
      _isplaying = true;
    } on Exception {
      log("error parse");
    }
    widget.audioPlayer.durationStream.listen((event) {
      setState(() {
        duration = event!;
      });
    });
    widget.audioPlayer.positionStream.listen((d) {
      setState(() {
        duration = d;
      });
    });
  }

  Future<void> audioplay() async {
    setState(() {
      _isplaying = !_isplaying;
    });
  }

  void onShuffleButtonPressed() async {
    final enable = !widget.audioPlayer.shuffleModeEnabled;
    if (enable) {
      await widget.audioPlayer.shuffle();
    }
    await widget.audioPlayer.setShuffleModeEnabled(enable);
  }

  // bool nextdone = true;
  // ne_xt() async {
  //   if (widget.audioPlayer.hasNext) {
  //     await widget.audioPlayer.seekToNext();
  //     print("skip");
  //   } else {
  //     await widget.audioPlayer.seekToNext();

  //     //   print("skip");
  //  }
//  }
}



////////////////////////////////controllers in music interface/////////////////

// class musicinterface_rea3 extends StatefulWidget {
//   dynamic model;

//   musicinterface_rea3({super.key, required  this.model});
//   @override
//   State<musicinterface_rea3> createState() => _musicinterface_rea3State();
// }

// class _musicinterface_rea3State extends State<musicinterface_rea3> {
 

//   @override
//   Widget build(BuildContext context) {
//     var _mediaquery = MediaQuery.of(context).size;
//     return
//   }

 