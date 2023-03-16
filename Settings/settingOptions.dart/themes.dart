import 'package:flutter/material.dart';
import 'package:music_player/AllColors/allColors.dart';

class The_mes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediqaquey = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: all_colors,
        title: const Text(
          "Themes",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Container(
        height: _mediqaquey.height,
        width: _mediqaquey.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 0, 0, 0), Colors.pink])),
        child: ListView(
          children: [
            Container(
              child: ListTile(
                title: const Text(
                  "Day",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {
                    print("name");
                  },
                  icon: const Icon(
                    Icons.toggle_off,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
