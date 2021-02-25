import 'package:audio_camera_app/screen/recoder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PatientsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PatientState();
  }
}

class PatientState extends State<PatientsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          title: Text('Deirdre Ella'),
          centerTitle: true,
          backgroundColor: HexColor('#516ca9'),
        ),
        body: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      child: Image.network(
                          'https://simg.nicepng.com/png/small/521-5215527_created-by-ariel-avatar-blank.png'),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Deirdre Ella',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '02-12-2021',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'PC_MD',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '(Male, 28)',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Pending',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(left: 30, top: 50, bottom: 30),
                  ),
                ],
              ),
              height: 200,
            ),
            Container(
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      'Start File',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.lightBlueAccent,
                    activeColor: Colors.blue,
                    inactiveThumbColor:HexColor('#516ca9'),
                  ),
                ],
              ),
            ), //this is the recorder file
          ],
        ),
      ),
    );
  }
}