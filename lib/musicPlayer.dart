import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class musicPlayer extends StatefulWidget {
  @override
  State<musicPlayer> createState() => _musicPlayerState();
}

class _musicPlayerState extends State<musicPlayer> {
  AudioPlayer audioPlayer = new AudioPlayer();

  String audioasset = "lib/assets/audios/danauToba.mp3";
  bool isPlay = false;
  bool isPause = false;

  void play() async {
    if (isPlay == false) {
      isPlay = !isPlay;

      int result = await audioPlayer.play(audioasset);
      if (result == 1) {
        //stop success
        print("Sound playing successfully.");
      } else {
        print("Error on while playing sound.");
      }
    } else if (isPlay == true && isPause == true) {
      isPause = false;
      int result = await audioPlayer.resume();
      if (result == 1) {
        //stop success
        print("Sound resume successfully.");
      } else {
        print("Error on while resume sound.");
      }
    }
  }

  void stop() async {
    isPlay == false;
    isPause = false;
    int result = await audioPlayer.stop();
    if (result == 1) {
      //stop success
      print("Sound stopping successfully.");
    } else {
      print("Error on while stopping sound.");
    }
  }

  void pause() async {
    if (isPlay == true) {
      isPause = true;
      int result = await audioPlayer.pause();
      if (result == 1) {
        //stop success
        print("Sound pause successfully.");
      } else {
        print("Error on while pause sound.");
      }
    }
  }

  void rate1x() async {
    int result = await audioPlayer.setPlaybackRate(1.0);
    if (result == 1) {
      //stop success
      print("Sound rate1X successfully.");
    } else {
      print("Error on while rate4X sound.");
    }
  }

  void rate2x() async {
    int result = await audioPlayer.setPlaybackRate(2.0);
    if (result == 1) {
      //stop success
      print("Sound rate2X successfully.");
    } else {
      print("Error on while rate4X sound.");
    }
  }

  void rate3x() async {
    int result = await audioPlayer.setPlaybackRate(3.0);
    if (result == 1) {
      //stop success
      print("Sound rate3X successfully.");
    } else {
      print("Error on while rate4X sound.");
    }
  }

  void rate4x() async {
    int result = await audioPlayer.setPlaybackRate(4.0);
    if (result == 1) {
      //stop success
      print("Sound rate4X successfully.");
    } else {
      print("Error on while rate4X sound.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Now Playing',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gotham',
                fontSize: 15,
              ),
              textAlign: TextAlign.center),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // decoration: new BoxDecoration(color: Colors.green),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('lib/assets/img/folklore1.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        child: Container(
                          height: 250,
                          // color: Colors.amber,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Kukira kita akan bersama',
                                  style: TextStyle(
                                    color: Color.fromARGB(64, 255, 255, 255),
                                    fontFamily: 'GothamBold',
                                    letterSpacing: 0.5,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Begitu banyak yang sama',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GothamBold',
                                    letterSpacing: 0.5,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Latarmu dan latarku',
                                  style: TextStyle(
                                    color: Color.fromARGB(64, 255, 255, 255),
                                    fontFamily: 'GothamBold',
                                    letterSpacing: 0.5,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  // decoration: new BoxDecoration(color: Colors.red),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              child: IconButton(
                                onPressed: stop,
                                icon: Icon(
                                  Icons.stop,
                                  size: 30,
                                  color: Color.fromRGBO(24, 20, 20, 1),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                onPressed: play,
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Color.fromRGBO(24, 20, 20, 1),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: 45,
                              height: 45,
                              child: IconButton(
                                onPressed: pause,
                                icon: Icon(
                                  Icons.pause,
                                  size: 30,
                                  color: Color.fromRGBO(24, 20, 20, 1),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: rate1x,
                              child: Container(
                                width: 30,
                                height: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    '1X',
                                    style: TextStyle(
                                      color: Color.fromRGBO(24, 20, 20, 1),
                                      fontFamily: 'GothamBold',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            InkWell(
                              onTap: rate2x,
                              child: Container(
                                width: 30,
                                height: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    '2X',
                                    style: TextStyle(
                                      color: Color.fromRGBO(24, 20, 20, 1),
                                      fontFamily: 'GothamBold',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            InkWell(
                              onTap: rate3x,
                              child: Container(
                                width: 30,
                                height: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    '3X',
                                    style: TextStyle(
                                      color: Color.fromRGBO(24, 20, 20, 1),
                                      fontFamily: 'GothamBold',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            InkWell(
                              onTap: rate4x,
                              child: Container(
                                width: 30,
                                height: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    '4X',
                                    style: TextStyle(
                                      color: Color.fromRGBO(24, 20, 20, 1),
                                      fontFamily: 'GothamBold',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
