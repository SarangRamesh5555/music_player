import 'package:flutter/material.dart';
import 'package:music_player/AllColors/allColors.dart';

class about_ extends StatelessWidget {
  Widget Abouttext(String new_Text) {
    return Text(
      new_Text,
      style: const TextStyle(
          color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _mediqaquey = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: all_colors,
        centerTitle: true,
        title: const Text(
          "About",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: _mediqaquey.height,
        width: _mediqaquey.width,
        color: all_colors,
        child: Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [Color.fromARGB(255, 0, 0, 0), Colors.pink])),
            child: Column(
              children: [
                Abouttext("App Name : Elpida Musixcs"),
                Abouttext("Version : 1"),
                Abouttext("Developed By Midhunpu")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
