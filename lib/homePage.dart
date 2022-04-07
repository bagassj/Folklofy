import 'package:flutter/material.dart';
import 'musicPlayer.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          centerTitle: true,
          title: Text('Discover Me',
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
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                  width: 240,
                  height: 300,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => musicPlayer()))
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage('lib/assets/img/folklore1.png'),
                            ),
                          ),
                          child: Container(
                              width: 500,
                              height: 500,
                              color: Color.fromRGBO(24, 20, 20, 0.4),
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Hati-Hati di Jalan',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'GothamBold',
                                            fontSize: 16,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(3, 3),
                                                blurRadius: 2,
                                                color: Color.fromARGB(
                                                    186, 0, 0, 0),
                                              )
                                            ]),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'Tulus',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              106, 255, 255, 255),
                                          fontFamily: 'Gotham',
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ))),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
