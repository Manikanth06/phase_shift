import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodybite_app/screens/event_screen.dart';

final _firestore = FirebaseFirestore.instance;

class DepartmentPage extends StatefulWidget {
  static String id = 'department_screen';

  @override
  State<DepartmentPage> createState() => _DepartmentPageState();
}

class _DepartmentPageState extends State<DepartmentPage> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF111328),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          title: const Text('PHASE_SHIFT'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10,
              width: 100, // constrain height
              child: ListView(
                shrinkWrap: true,
                // scrollDirection: Axis.horizontal,
                scrollDirection: Axis.vertical,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(10),
              child: Text(
                'Computer Science & Engg',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                '***** Events Hosted by Our department are *****',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            EventsStream(),
          ],
        ),
      ),
    );
  }
}

class EventsStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('CSE').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final events = snapshot.data.docs;
          List<ListEvent> messagesWidgets = [];
          for (var event in events) {
            final eventName = event['EventName'];
            final eventDis = event['Description'];
            final eventAbs = event['Abstraction'];
            final eventCod = event['Co-ordinator'];
            final eventDate = event['Date'];
            final eventVenue = event['Venue'];
            final eventContact = event['Contact'];

            messagesWidgets.add(
              ListEvent(
                name: eventName,
                dis: eventDis,
                abs: eventAbs,
                cod: eventCod,
                date: eventDate,
                venue: eventVenue,
                contact: eventContact,
              ),
            );
          }
          return Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: messagesWidgets,
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlue,
            ),
          );
        }
      },
    );
  }
}

class ListEvent extends StatelessWidget {
  ListEvent(
      {this.name,
      this.dis,
      this.abs,
      this.cod,
      this.contact,
      this.date,
      this.venue});

  String name;
  String dis;
  String abs;
  String cod;
  String contact;
  String date;
  String venue;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      child: ExpansionTile(
        initiallyExpanded: false,
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
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        children: [
          Text(
            dis,
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
          FlatButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventPage(
                    name: name,
                    abs: abs,
                    cod: cod,
                    contact: contact,
                    date: date,
                    venue: venue),
              ),
            );
          },
              child: Text('View')),
        ],
      ),
    );
  }
}
