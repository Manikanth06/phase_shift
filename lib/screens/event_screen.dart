import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const dTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25.0,
  fontWeight: FontWeight.w600,
);

class EventPage extends StatelessWidget {

  EventPage({this.name,this.abs,this.cod,this.contact,this.date,this.venue});

  final bool isOpen = false;

  String name;
  String abs;
  String cod;
  String contact;
  String date;
  String venue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Phase Shift")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                childrenPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  FontAwesomeIcons.eye,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                title: Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                children: [
                  Text(
                    abs,
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            Text("Event Co-ordinator : " + cod, style: dTextStyle),
            Text("Contact : " + contact, style: dTextStyle),
            Text(
              "Event Date : " + date,
              style: dTextStyle,
            ),
            Text("Venue : " + venue, style: dTextStyle),
            GestureDetector(
              child: Container(
                child: Center(
                  child: Text(
                    "Register",
                    style: dTextStyle.copyWith(color: Colors.black),
                  ),
                ),
                color: Colors.white,
                height: 60.0,
                margin: EdgeInsets.all(12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

