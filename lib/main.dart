//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  © Cosmos Software | Ali Yigit Bireroglu                                                                                                          /
//  All material used in the making of this code, project, program, application, software et cetera (the "Intellectual Property")                    /
//  belongs completely and solely to Ali Yigit Bireroglu. This includes but is not limited to the source code, the multimedia and                    /
//  other asset files.                                                                                                                               /
//  If you were granted this Intellectual Property for personal use, you are obligated to include this copyright text at all times.                  /
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

import 'package:cupertino_tabbar/cupertino_tabbar.dart' as CupertinoTabBar;
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino Tab Bar Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Cupertino Tab Bar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int cupertinoTabBarIValue = 0;
  int cupertinoTabBarIValueGetter() => cupertinoTabBarIValue;
  int cupertinoTabBarIIValue = 1;
  int cupertinoTabBarIIValueGetter() => cupertinoTabBarIIValue;
  int cupertinoTabBarIIIValue = 3;
  int cupertinoTabBarIIIValueGetter() => cupertinoTabBarIIIValue;
  int cupertinoTabBarIVValue = 0;
  int cupertinoTabBarIVValueGetter() => cupertinoTabBarIVValue;
  int cupertinoTabBarVValue = 0;
  int cupertinoTabBarVValueGetter() => cupertinoTabBarVValue;
  int cupertinoTabBarVIValue = 0;
  int cupertinoTabBarVIValueGetter() => cupertinoTabBarVIValue;
  int cupertinoTabBarVIIValue = 2;
  int cupertinoTabBarVIIValueGetter() => cupertinoTabBarVIIValue;
  int cupertinoTabBarVIIIValue = 2;
  int cupertinoTabBarVIIIValueGetter() => cupertinoTabBarVIIIValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B292B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Simple Examples",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: "SFProRounded",
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 10.0),
            ),
            CupertinoTabBar.CupertinoTabBar(
              cupertinoTabBarIValue == 0
                  ? const Color(0xFF293a80)
                  : const Color(0xFFf88020),
              cupertinoTabBarIValue == 0
                  ? const Color(0xFF537ec5)
                  : const Color(0xFFd1274b),
              [
                Text(
                  "A",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: cupertinoTabBarIValue == 0 ? 18.75 * 2 : 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "B",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: cupertinoTabBarIValue == 1 ? 18.75 * 2 : 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              cupertinoTabBarIValueGetter,
              (int index) {
                setState(() {
                  cupertinoTabBarIValue = index;
                });
              },
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            CupertinoTabBar.CupertinoTabBar(
              const Color(0xFF3c4245),
              const Color(0xFF719192),
              const [
                Text(
                  "Option A",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option B",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option C",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              cupertinoTabBarIIValueGetter,
              (int index) {
                setState(() {
                  cupertinoTabBarIIValue = index;
                });
              },
              useSeparators: true,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            CupertinoTabBar.CupertinoTabBar(
              const Color(0xFFd4d7dd),
              const Color(0xFFf7f7f7),
              const [
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Play",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              cupertinoTabBarIIIValueGetter,
              (int index) {
                setState(() {
                  cupertinoTabBarIIIValue = index;
                });
              },
              useShadow: false,
              innerHorizontalPadding: 5,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            CupertinoTabBar.CupertinoTabBar(
              Colors.transparent,
              const Color(0xFFe9e5dd),
              [
                Text(
                  "Tab 1",
                  style: TextStyle(
                    color: cupertinoTabBarIVValue == 0
                        ? Colors.black
                        : Colors.white,
                    fontSize: 18.75 * 1.5,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Tab 2",
                  style: TextStyle(
                    color: cupertinoTabBarIVValue == 1
                        ? Colors.black
                        : Colors.white,
                    fontSize: 18.75 * 1.5,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Tab 3",
                  style: TextStyle(
                    color: cupertinoTabBarIVValue == 2
                        ? Colors.black
                        : Colors.white,
                    fontSize: 18.75 * 1.5,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              cupertinoTabBarIVValueGetter,
              (int index) {
                setState(() {
                  cupertinoTabBarIVValue = index;
                });
              },
              useSeparators: true,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            const Text(
              "Regular vs Extended",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: "SFProRounded",
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 10.0),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: CupertinoTabBar.CupertinoTabBar(
                cupertinoTabBarVValue == 0
                    ? const Color(0xFF943855)
                    : cupertinoTabBarVValue == 1
                        ? const Color(0xFF207561)
                        : cupertinoTabBarVValue == 2
                            ? const Color(0xFFf0dd92)
                            : const Color(0xFF4f81c7),
                cupertinoTabBarVValue == 0
                    ? const Color(0xFFeb7070)
                    : cupertinoTabBarVValue == 1
                        ? const Color(0xFF589167)
                        : cupertinoTabBarVValue == 2
                            ? const Color(0xFFffffc5)
                            : const Color(0xFF64c4ed),
                [
                  Text(
                    "A",
                    style: TextStyle(
                      color: cupertinoTabBarVValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "BC",
                    style: TextStyle(
                      color: cupertinoTabBarVValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "DEFG",
                    style: TextStyle(
                      color: cupertinoTabBarVValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "HIJKLM",
                    style: TextStyle(
                      color: cupertinoTabBarVValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                cupertinoTabBarVValueGetter,
                (int index) {
                  setState(() {
                    cupertinoTabBarVValue = index;
                  });
                },
                useSeparators: true,
              ),
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: CupertinoTabBar.CupertinoTabBar(
                cupertinoTabBarVIValue == 0
                    ? const Color(0xFF943855)
                    : cupertinoTabBarVIValue == 1
                        ? const Color(0xFF207561)
                        : cupertinoTabBarVIValue == 2
                            ? const Color(0xFFf0dd92)
                            : const Color(0xFF4f81c7),
                cupertinoTabBarVIValue == 0
                    ? const Color(0xFFeb7070)
                    : cupertinoTabBarVIValue == 1
                        ? const Color(0xFF589167)
                        : cupertinoTabBarVIValue == 2
                            ? const Color(0xFFffffc5)
                            : const Color(0xFF64c4ed),
                [
                  Text(
                    "A",
                    style: TextStyle(
                      color: cupertinoTabBarVIValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "BC",
                    style: TextStyle(
                      color: cupertinoTabBarVIValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "DEFG",
                    style: TextStyle(
                      color: cupertinoTabBarVIValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "HIJKLM",
                    style: TextStyle(
                      color: cupertinoTabBarVIValue == 2
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18.75,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                cupertinoTabBarVIValueGetter,
                (int index) {
                  setState(() {
                    cupertinoTabBarVIValue = index;
                  });
                },
                useSeparators: true,
                allowExpand: true,
              ),
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            const Text(
              "Regular Scrollable vs Fitted Scrollable",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: "SFProRounded",
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 10.0),
            ),
            CupertinoTabBar.CupertinoTabBar(
              const Color(0xFFf0dd92),
              const Color(0xFFffffc5),
              const [
                Text(
                  "Option A",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option B",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option C",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option D",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option E",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option F",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option H",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option I",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option J",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option K",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option L",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option M",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              cupertinoTabBarVIIValueGetter,
              (int index) {
                setState(() {
                  cupertinoTabBarVIIValue = index;
                });
              },
              useSeparators: true,
              allowScrollable: true,
            ),
            Container(
              constraints: const BoxConstraints.expand(height: 20.0),
            ),
            CupertinoTabBar.CupertinoTabBar(
              const Color(0xFFf0dd92),
              const Color(0xFFffffc5),
              const [
                Text(
                  "Option A",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option B",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option C",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option D",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option E",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option F",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option H",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option I",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option J",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option K",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option L",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Option M",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.75,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProRounded",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              cupertinoTabBarVIIIValueGetter,
              (int index) {
                setState(() {
                  cupertinoTabBarVIIIValue = index;
                });
              },
              useSeparators: true,
              allowScrollable: true,
              fittedWhenScrollable: true,
              animateWhenScrollable: false,
            ),
          ],
        ),
      ),
    );
  }
}
