import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_player/Serch.dart/serchReafactor/serchReafactor.dart';
import 'package:music_player/Settings/settings.dart';

class serch_Page1 extends StatelessWidget {
  Widget _icon_buttom(var _icon) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          _icon,
          color: const Color.fromARGB(255, 0, 0, 0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          // ignore: sort_child_properties_last
          child: ListView(
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
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: _mediaquery.height,
          width: _mediaquery.width,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: ListView(
            children: [
              SreaFactor1(
                sheight1: _mediaquery.height * 0.1,
                scolor1: Colors.black,
                swidth1: _mediaquery.width,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  "Enjoy Your Favoraite Music",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              /////////////////////////////serchbar//////////////////////////////////////////
              Container(
                  height: 45,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: _icon_buttom(Icons.search_rounded),
                          prefixIcon: _icon_buttom(Icons.music_note_outlined),
                          hintText: "Search something.....",
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  style: BorderStyle.solid,
                                  width: 5,
                                  color: Colors.white),
                              borderRadius: BorderRadius.circular(50))))
                  //  ))),
                  ),
              const SizedBox(
                height: 20,
              ),

              //////////////////////////suggestions/////////////////////////////////
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "suggestions",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ///////////////////////////////suggestion lists////////////////////////
              srefactor3(
                  _mediaquery.height * 0.9,
                  _mediaquery.width * 0.8,
                  const Color.fromARGB(255, 0, 0, 0),
                  _mediaquery.width * 0.13,
                  _mediaquery.height * 0.10)
            ],
          ),
        ),
      ),
    );
  }
}
