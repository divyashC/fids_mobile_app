import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SEARCH FLIGHTS'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 120, left: 30),
            // add sizedbox from the code below
            child: SizedBox(
                width: 366,
                height: 160,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 366,
                          height: 160,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                            color: Color.fromRGBO(255, 242, 242, 1),
                          ))),
                  Positioned(
                      top: 54,
                      left: 27,
                      child: SizedBox(
                          width: 312,
                          height: 92,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 25,
                                left: 220,
                                child: SizedBox(
                                    width: 92,
                                    height: 40,
                                    child: Stack(children: const <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 28,
                                          child: Text(
                                            '1240',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    25, 25, 25, 1),
                                                fontFamily: 'Helvetica',
                                                fontSize: 17,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.5),
                                          )),
                                      Positioned(
                                          top: 24,
                                          left: 0,
                                          child: Text(
                                            'BKK -Bangkok',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    85, 85, 85, 1),
                                                fontFamily: 'Helvetica',
                                                fontSize: 14,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                    ]))),
                            Positioned(
                                top: 25,
                                left: 0,
                                child: SizedBox(
                                    width: 74,
                                    height: 40,
                                    child: Stack(children: const <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 18,
                                          child: Text(
                                            '0830',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    25, 25, 25, 1),
                                                fontFamily: 'Helvetica',
                                                fontSize: 17,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.411764705882353),
                                          )),
                                      Positioned(
                                          top: 24,
                                          left: 0,
                                          child: Text(
                                            'PBH - Paro',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    85, 85, 85, 1),
                                                fontFamily: 'Helvetica',
                                                fontSize: 14,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                    ]))),
                            Positioned(
                                top: 25,
                                left: 77,
                                child: SizedBox(
                                    width: 140,
                                    height: 36,
                                    child: Stack(children: <Widget>[
                                      const Positioned(
                                          top: 18.53125,
                                          left: 2,
                                          child: Divider(
                                              color: Color.fromRGBO(
                                                  208, 208, 208, 1),
                                              thickness: 1)),
                                      Positioned(
                                          top: 14.5,
                                          left: 0,
                                          child: Container(
                                              width: 7,
                                              height: 7,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    208, 208, 208, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(7, 7)),
                                              ))),
                                      Positioned(
                                          top: 14.5,
                                          left: 133,
                                          child: Container(
                                              width: 7,
                                              height: 7,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    208, 208, 208, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(7, 7)),
                                              ))),
                                      Positioned(
                                          top: 0,
                                          left: 52,
                                          child: Container(
                                              width: 36,
                                              height: 36,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    236, 68, 30, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(36, 36)),
                                              ))),
                                    ]))),
                            const Positioned(
                                top: 0,
                                left: 109,
                                child: Text(
                                  '04 hr 10min',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(85, 85, 85, 1),
                                      fontFamily: 'Helvetica',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.1428571428571428),
                                )),
                            const Positioned(
                                top: 76,
                                left: 103,
                                child: Text(
                                  '14 - 09 - 2022',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(85, 85, 85, 1),
                                      fontFamily: 'Helvetica',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.1428571428571428),
                                )),
                          ]))),
                  Positioned(
                      top: 27,
                      left: 26,
                      child: SizedBox(
                          width: 101,
                          height: 24,
                          child: Stack(children: <Widget>[
                            const Positioned(
                                top: 7,
                                left: 43,
                                child: Text(
                                  'KB150',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 25, 25, 1),
                                      fontFamily: 'Apple SD Gothic Neo',
                                      fontSize: 17,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 0.9411764705882353),
                                )),
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 38,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Drukairlogo.png'),
                                          fit: BoxFit.fitWidth),
                                    ))),
                          ]))),
                ]))));
  }
}
