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
          ),
          Reorder(),//this is the recorder file
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          "Date of Birth",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        child: Text(
                          "02-17-1988",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          "Case NO",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        child: Text(
                          "V245",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        "PC-NO",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.23,
                      child: Text(
                        "Checked out",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            margin: const EdgeInsets.only(left: 40, right: 40, top: 20),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40, top: 20),
            color:HexColor('#bfc1c7'),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.create_new_folder_sharp,
                  color: HexColor('#516ca9'),
                  size: 40,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Super Bill,",
                  style: TextStyle(
                    color: HexColor('#516ca9'),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40, top: 20),
            color:HexColor('#bfc1c7'),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pending_actions,
                  color: HexColor('#516ca9'),
                  size: 40,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Hospital,",
                  style: TextStyle(
                    color: HexColor('#516ca9'),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}