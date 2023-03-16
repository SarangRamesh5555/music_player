import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/Home/Home.dart';

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    spla_sh();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _mediquery = MediaQuery.of(context).size;
    return Scaffold(


      backgroundColor: Colors.transparent,
      body: Container(
        height: _mediquery.height,
        width: _mediquery.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/mus7.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
         const    SizedBox(
              height: 180,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    )),
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/musiclogo.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container   (
              child: const Text(
                "Elpida Musicx",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future spla_sh() async {
    await Future.delayed(Duration(seconds: 6));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }
}
