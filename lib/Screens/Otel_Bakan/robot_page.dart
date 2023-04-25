import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';

import '../../const/background.dart';

class RobotPageBakan extends StatefulWidget {
  @override
  _RobotPageBakanState createState() => _RobotPageBakanState();
}

class _RobotPageBakanState extends State<RobotPageBakan> {
  final int _selectedIndex = 0;

  String soru = "";
  List<String> homePage = [
    'oteller',
    'farklı oteller',
    'şehir',
    'detaylı bakmak'
  ];
  bool fikrimYok = true;
  findSolution() {
    for (int i = 0; i < homePage.length; i++) {
      if (soru.contains(homePage[i])) {
        print("a");
        fikrimYok = false;
      }
    }
    if (fikrimYok == false) {
      showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(),
            );
          });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NavigationBakan1(
              index: 0,
            );
          },
        ),
      );
    } else {
      // int i = 0;
      // print(soru.contains(homePage[i]));
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          msg: "Konu hakkında bilgim yok.",
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Color.fromARGB(255, 44, 201, 193));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'DIGOT',
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 120,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  image: const DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'assets/images/rob1.png',
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade100,
                      offset: const Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              // const Text(
              //   'Size nasıl yardımcı olabilirim?',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 15,
              //   ),
              // ),

              Divider(
                height: 50,
                color: Colors.grey,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Otellere bakmak istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 0,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Favorilere eklediğim otelleri görmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 1,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Profilime gitmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 3,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Otellere bakmak istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 0,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Favorilere eklediğim otelleri görmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 1,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Otellere bakmak istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 0,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Favorilere eklediğim otelleri görmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 1,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              soru = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 11,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Başka bir sorum var...',
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              findSolution();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                          child: Text("Sor"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
