import 'package:flutter/material.dart';
import 'package:meta_ozce_0/widgets/navigation_konak.dart';

class RobotPageKonak extends StatefulWidget {
  @override
  _RobotPageKonakState createState() => _RobotPageKonakState();
}

class _RobotPageKonakState extends State<RobotPageKonak> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      width: 450,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'assets/images/rob3.png',
                          ),
                        ),
                        border: Border.all(color: Colors.black12, width: 3),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade100,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Text(
              'Size nasıl yardımcı olabilirim?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    child: Center(
                      child: Text(
                        'Otel hizmetlerine bakmak istiyorum',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationKonak(
                                index: 0,
                              )),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    child: Center(
                      child: Text(
                        'Profilime gitmek istiyorum.',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationKonak(
                                index: 2,
                              )),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Başka bir sorum var.',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
