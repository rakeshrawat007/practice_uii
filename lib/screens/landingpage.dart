import 'package:flutter/material.dart';
import 'package:practice_ui/screens/gridview.dart';
import 'package:practice_ui/screens/timeui.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5EBFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(253, 253, 253, 253),
                            Color.fromARGB(280, 250, 253, 253)
                          ],
                        )),
                    height: 175,
                    width: size.width / 1.1,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(Icons.timer),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            'TREATMENT TIME',
                            style: TextStyle(
                                color: Color(
                                  0xffFC9893,
                                ),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '8:00 Am',
                          style: TextStyle(
                              color: Color(
                                0xffFC9893,
                              ),
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 20,
              ),
                TimeUi(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xff474B9F),
                    height: 80,
                    width: size.width / 1.1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Daily Check-in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GridViewUI()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
