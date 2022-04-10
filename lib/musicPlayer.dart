import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class musicplayer extends StatefulWidget {
  @override
  State<musicplayer> createState() => _musicplayerState();
}

class _musicplayerState extends State<musicplayer> {
  AudioPlayer audioPlayer = AudioPlayer();

  String audioasset = "lib/assets/audios/danauToba.mp3";
  bool isPlay = false;
  bool isPause = false;

  void play() async {
    if (isPlay == false) {
      isPlay = true;
      ByteData bytes =
          await rootBundle.load(audioasset); //load sound from assets
      Uint8List soundbytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      int result = await audioPlayer.playBytes(soundbytes);
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
    isPlay = false;
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
    isPause = true;
    int result = await audioPlayer.pause();
    if (result == 1) {
      //stop success
      print("Sound pause successfully.");
    } else {
      print("Error on while pause sound.");
    }
  }

  void rate1x() async {
    audioPlayer.setPlaybackRate(1.0);
  }

  void rate2x() async {
    audioPlayer.setPlaybackRate(2.0);
  }

  void rate3x() async {
    audioPlayer.setPlaybackRate(3.0);
  }

  void rate4x() async {
    audioPlayer.setPlaybackRate(4.0);
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
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 250,
                        // color: Colors.amber,
                        child: SingleChildScrollView(
                          child: Text(
                            'Dahulu kala di pedalaman pulau Andalas, tinggalah seorang pe'
                            'muda yang gemar memancing ikan bernama toba.\n\n“Nah aku memanci'
                            'ng di sini saja, hari ini aku harus dapat ikan untuk menu ma'
                            'kan malam ku”\n\nToba yg sabar akhirnya merasakan kailnya  dimak'
                            'an oleh ikan.\n\n“Wah berat  sekali kan ini sekali kan ini dia '
                            'melawan ini pastikan yang besar.”\n\nToba pun berhasil mendapatk'
                            'an sebuah ikan mas. yang ternyata sunnguh besar\n\n“wah berat se'
                            'kali kamu ya”\n\nikan itupun berkilauan terkena pancaran sinar m'
                            'atahari, toba pun memasukkan hasil tangkapannya itu ke sebua'
                            'h tampayan\n\nseusai mendapatkan ikan, toba bergegas menuju ruma'
                            'h untuk memasak ikan tangkapannya\n\n“nah tunggu disini dulu ya '
                            'ikan, aku mau mencari kayu bakar dulu untuk memasak”\n\nsemantar'
                            'a toba mencari kayu bakar untuk memasak, sebuah keajaiban te'
                            'rjadi dari rumahnya. Rumahnya seketika bersinar.\n\nsetelah bebe'
                            'rapa waktu mencari kayu bakar, toba pun kembali kerumahnya\n\nny'
                            'anyii…\n\nnamun betapa terkejutnya ia ketika memasuki rumahnya,\n\n'
                            '“hah, kemana ikan ku, lalu darimana emas ini ?”\n\nikan hasil ta'
                            'ngkapannya menghilang , sebagai gantinya terdapat kepingan k'
                            'epingan emas didalam tempayannya\n\n“itu merupakan emas dariku t'
                            'oba”\n\n“hahh, siapa kau gadis manis, apa yang kau lakukan disin'
                            'i ?”\n\n“aku sebenarnya adalah ikan yang kau tangkap tadipagi, j'
                            'angan kau makan aku. sebagai gantinya , aku akan tinggal ber'
                            'sma untuk membantu mu, tapi berjanjilah padaku, kau tidak ak'
                            'an memberitahu siapapun akan hal ini!”\n\n“baiklah aku berjanji”\n\n'
                            'maka gadis jelmaan ikan itu Tinggal bersama toba untuk memba'
                            'ntu toba.Hingga toba menikah dengan gadis rumahan ikan terse'
                            'but.Mereka pun dikaruniai seorang anak bernama Samosir.\n\nNamun'
                            ' karena selalu dimanja Samosir tumbuh menjadi anak yang mala'
                            's dan nakal.\n\nToba dan Istrinya terkadang merasa prihatin deng'
                            'an kelakuan anak mereka.\n\nHingga suatu hari\n\n“Nak ibu minta tolo'
                            'ng antarkan nasi ini kepada ayahmu di ladang.”\n\n“ah aku masih '
                            'capek habis bermain ibu, ibu saja yang pergi”\n\n“samosir, ibu m'
                            'inta sekali ini saja turuti perintah ibumu ini”\n\n“ah, iyaya ak'
                            'u antarkan, bawa kesini bekalnya”\n\n“hati hati nak, jangan mamp'
                            'ir-mapir, ayahmu menunggu lama”\n\n“iyaiya buu”\n\nSamosir akhirnya '
                            'mau mengantar bekal makan siang untuk Ayahnya di ladang.\n\nKala'
                            ' itu matahari bersinar terik Samosir dengan muka cemberut ma'
                            'sam berjalan menuju ladang sang ayah.\n\n“Panasnya aku perlu ist'
                            'irahat sebentar”.\n\nSamosir pun berhenti sejenak di bawah pohon'
                            ' yang rindang.\n\n“Emm kira kira bekal ibu untuk kayak apa ya pa'
                            'sti enak. ibukan pintar memasak kuintip sedikit ahh”\n\nSamosir '
                            'yang nakal membuka bekal untuk sang ayah.\n\n“Wah Makanan kesuka'
                            'anku.aku makan  sedikit ah pasti ayah  tak  mengetahuinya.”\n\n“'
                            'nyam nyam nyam, enaknya masakan ibu..”\n\nTanpa disadari, samosi'
                            'r memakan semua bekal ayahnya itu\n\nHari semakin siang Samosir'
                            ' yang kenyang  melanjutkan perjalanannya mengantar bekal unt'
                            'uk sang ayah.\n\nSetibanya di ladang.\n\n“Ayah, ayahh , aku membawa'
                            'kan bekal dari ibu untuk ayah”\n\n“oh samosir anakku, tumben sek'
                            'ali kamu mau kesini , kukira ibu yang akan kesini, ayo maka'
                            'n bersama yah digubuk”\n\n“ehh tapi aku mau pulang saja ayah”\n\n“ayo'
                            'lah temani ayah makan siang”\n\nNamun begitu membuka bekalnya, t'
                            'oba sangat terkejut mengetahui bekalnya kosong,\n\n“hah, apa in'
                            'i, kenapa tidak ada makanan yang tersisa !”\n\n“maafkan aku ayah'
                            ', aku khilaf, tadi aku memakan sedikit sewaktu perjalanan ke'
                            'sini”\n\nToba sungguh marah mendengar pengakuan anaknya itu\n\n“kena'
                            'pa kau habiskan makanku, haah! sudah pemalas, nakal lagi, ka'
                            'u benar benar anak ikan”\n\nmendengar ayahnya marah dan memanggi'
                            'lnya anak ikan, samosir pun sedih dan menangis, ia segera be'
                            'rlari menuju rumahnya menemui ibunya\n\n“ibuu ibuu ibuuu”\n\n“Samos'
                            'ir, kenapa menangis nak ?”\n\nsambil terisak isak, samosir mence'
                            'ritakan kepada ibunya, ia menceritakan kalau ia dikatakan an'
                            'ak ikan oleh ayahnya,\n\nmendengar cerita anaknya sang ibu terke'
                            'jut, ia tidak menyangka jika suaminya itu telah melanggar ja'
                            'nji untuk tidak menceritakan asal usulnya kepada siapapun.\n\n“s'
                            'amosir, naikklah keatas bukit sana, cepatlah nakk!”\n\n“baiklah '
                            'ibu”\n\nibunya samosir, segera menyuruh putranya itu, untuk naik'
                            ' keatas bukit yang lebih tinggi, setelah mengetahui anaknya '
                            'telah sampai di bukit giliran dia menuju sungai tempat asaln'
                            'ya dulu.\n\niapun terjun kedalam sungai tsb dan kembali kewujud'
                            ' ikan, seketika, awan hitam menggelaiti langit yang awalnya '
                            'cerah, guntur kilat menyambar berkali kali, terjadilah hujan'
                            ' badai besar,\n\nhujan yang begitu tiba tiba membuat semua hewa'
                            'n berlarian panik menyelamatkan diri,\n\nhujan deras mengguyur '
                            'lembah, membuat air sungai meluap, hingga membentuk sebuah d'
                            'anau yang besar\n\nDanau itu kini dikenal sbg danau toba, sedang'
                            'kan pulau yang berada ditengahnya diberi nama pulau Samosir',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GothamBold',
                              letterSpacing: 0.5,
                              fontSize: 14,
                              wordSpacing: 3,
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
                              onDoubleTap: rate1x,
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
                              onDoubleTap: rate2x,
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
                              onDoubleTap: rate3x,
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
                              onDoubleTap: rate4x,
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
