import 'package:flutter/material.dart';

class musicPlayer extends StatelessWidget {
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
                        borderRadius: BorderRadius.circular(60),
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage('lib/assets/img/folklore1.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 420,
                        // decoration: BoxDecoration(color: Colors.amber),
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
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Begitu banyak yang sama',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GothamBold',
                                  letterSpacing: 0.5,
                                  fontSize: 26,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Latarmu dan latarku',
                                style: TextStyle(
                                  color: Color.fromARGB(64, 255, 255, 255),
                                  fontFamily: 'GothamBold',
                                  letterSpacing: 0.5,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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
                              child: Icon(
                                Icons.stop,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: 60,
                              height: 60,
                              child: Icon(
                                Icons.play_arrow,
                                size: 40,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: 45,
                              height: 45,
                              child: Icon(
                                Icons.pause,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFe0f2f1)),
                            ),
                          ],
                        ),
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
