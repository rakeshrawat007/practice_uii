import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: Container(
                    color: Colors.white,
                    height: 60,
                    width: size.width / 1.1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.ac_unit),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Slide to confirm Treatment',
                          style: TextStyle(
                              color: Color(
                                0xff7D82C0,
                              ),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.double_arrow,
                          color: Color(
                            0xffFC9893,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                Container(
                  height: 500,
                  child: GridView(
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Container(
                          child: Card(
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  height:150,
                                  child: Image.asset('lib/images/cloudy.png'),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 120),
                                    ClipRRect
                                      (borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                        color: Color(
                                          0xffFC9893,
                                        ),
                                        child: Text('95%'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          color: Color(
                                            0xffFC9893,
                                          ),
                                          height: 20,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 40,
                                          color: Color(0xffFFEBE9)
                                          ,
                                            )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Great Job!',
                                          style: TextStyle(
                                            color: Color(
                                              0xffFC9893,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: 15,
                                          width: 15,
                                          child:
                                              Image.asset('lib/images/cele.png'),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Positioned(
                                    top: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Weekly ',
                                                style: TextStyle(
                                                  color: Color(0xff474B9F),
                                                  fontSize: 20,
                                                ),
                                              ),
                                              Text(
                                                'compliance',
                                                style: TextStyle(
                                                  color: Color(0xff474B9F),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 110,
                                  width: 130,
                                  child: Image.asset(
                                    'lib/images/sun.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  '14',
                                  style: TextStyle(
                                      color: Color(0xff474B9F),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Humidity 90%',
                                  style: TextStyle(
                                      color: Color(0xff474B9F),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Wind 2km/h',
                                  style: TextStyle(
                                      color: Color(0xff474B9F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'New York,Ny',
                                  style: TextStyle(
                                      color: Color(
                                        0xffFC9893,
                                      ),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 225,
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
