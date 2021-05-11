import 'package:flutter/material.dart';

class TimeUi extends StatefulWidget {
  @override
  _TimeUiState createState() => _TimeUiState();
}

class _TimeUiState extends State<TimeUi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  ClipRRect(
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
    );
  }
}
