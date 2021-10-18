import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

class Letras extends StatefulWidget {
  const Letras({Key? key}) : super(key: key);

  @override
  _LetrasState createState() => _LetrasState();
}

class _LetrasState extends State<Letras> {

  AudioCache _audioCache = AudioCache(prefix: "assets/audios/");

  _executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "A.mp3", "B.mp3", "C.mp3",
      "D.mp3", "E.mp3", "F.mp3",
      "G.mp3", "H.mp3", "I.mp3",
      "J.mp3", "K.mp3", "L.mp3",
      "M.mp3", "N.mp3", "O.mp3",
      "P.mp3", "Q.mp3", "R.mp3",
      "S.mp3", "T.mp3", "U.mp3",
      "V.mp3", "W.mp3", "X.mp3",
      "Y.mp3", "Z.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executar("A");
          },
          child: Image.asset("assets/imagens/A.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("B");
          },
          child: Image.asset("assets/imagens/B.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("C");
          },
          child: Image.asset("assets/imagens/ C.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("D");
          },
          child: Image.asset("assets/imagens/D.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("E");
          },
          child: Image.asset("assets/imagens/E.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("F");
          },
          child: Image.asset("assets/imagens/F.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("G");
          },
          child: Image.asset("assets/imagens/G.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("H");
          },
          child: Image.asset("assets/imagens/H.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("I");
          },
          child: Image.asset("assets/imagens/I.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("J");
          },
          child: Image.asset("assets/imagens/J.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("K");
          },
          child: Image.asset("assets/imagens/K.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("L");
          },
          child: Image.asset("assets/imagens/L.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("M");
          },
          child: Image.asset("assets/imagens/M.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("N");
          },
          child: Image.asset("assets/imagens/N.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("O");
          },
          child: Image.asset("assets/imagens/O.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("P");
          },
          child: Image.asset("assets/imagens/P.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("Q");
          },
          child: Image.asset("assets/imagens/Q.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("R");
          },
          child: Image.asset("assets/imagens/R.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("S");
          },
          child: Image.asset("assets/imagens/S.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("T");
          },
          child: Image.asset("assets/imagens/T.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("U");
          },
          child: Image.asset("assets/imagens/U.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("V");
          },
          child: Image.asset("assets/imagens/V.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("W");
          },
          child: Image.asset("assets/imagens/W.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("X");
          },
          child: Image.asset("assets/imagens/X.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("Y");
          },
          child: Image.asset("assets/imagens/Y.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("Z");
          },
          child: Image.asset("assets/imagens/Z.png"),
        ),
      ],
    );
  }
}
