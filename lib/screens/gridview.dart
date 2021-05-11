import 'package:flutter/material.dart';

class GridViewUI extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridViewUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 225,
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0),
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
                    ),//left grid iske niche se
                    leftGrid()
                  ],
                ),
              ),
            ),
          rightGrid()
          ],
         ),
    );
  }
  Widget leftGrid()
  {
    return Positioned(
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
        ));
  }
  Widget rightGrid(){
    return  ClipRRect(
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
    );
  }
}
