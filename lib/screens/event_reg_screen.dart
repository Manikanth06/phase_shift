import 'package:flutter/material.dart';
import 'package:foodybite_app/pallete.dart';
import 'package:foodybite_app/widgets/rounded-button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class EventRegPage extends StatelessWidget {

  EventRegPage({this.event});

  String name;
  String email;
  String event;
  String sem;
  String dept;
  String usn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Phase Shift")),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  name = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Name",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  usn = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'USN',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  dept = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Deparment",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  sem = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Sem",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  event = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: event,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RoundedButton(
                  buttonName: 'Register',
                  onPressed: () {
                    _firestore.collection('Eventregister').add({
                      'name': name,
                      'email': email,
                      'usn': usn,
                      'department': dept,
                      'sem': sem,
                      'event': event,
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}


//Size size = MediaQuery.of(context).size;
// return Scaffold(
//   appBar: AppBar(
//     title: Center(child: Text("Phase Shift")),
//   ),
//   backgroundColor: Colors.transparent,
//   body: Column(
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: [
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 50.0,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Container(
//               height: size.height * 0.08,
//               width: size.width * 0.8,
//               decoration: BoxDecoration(
//                 color: Colors.grey[500].withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//
//                     ),
//                     hintText: "Email",
//                     hintStyle: kBodyText,
//                   ),
//                   style: kBodyText,
//                   onChanged: (value) {
//                     // email = value;
//                   },
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Container(
//               height: size.height * 0.08,
//               width: size.width * 0.8,
//               decoration: BoxDecoration(
//                 color: Colors.grey[500].withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     ),
//                     hintText: "USN",
//                     hintStyle: kBodyText,
//                   ),
//                   style: kBodyText,
//                   onChanged: (value) {
//                     // password = value;
//                   },
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Container(
//               height: size.height * 0.08,
//               width: size.width * 0.8,
//               decoration: BoxDecoration(
//                 color: Colors.grey[500].withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     ),
//                     hintText: "USN",
//                     hintStyle: kBodyText,
//                   ),
//                   style: kBodyText,
//                   onChanged: (value) {
//                     // password = value;
//                   },
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Container(
//               height: size.height * 0.08,
//               width: size.width * 0.8,
//               decoration: BoxDecoration(
//                 color: Colors.grey[500].withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     ),
//                     hintText: "USN",
//                     hintStyle: kBodyText,
//                   ),
//                   style: kBodyText,
//                   onChanged: (value) {
//                     // password = value;
//                   },
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           RoundedButton(
//             buttonName: 'Register',
//             onPressed: () {}
//           ),
//           SizedBox(
//             height: 25,
//           ),
//         ],
//       ),
//     ],
//   ),
// );
