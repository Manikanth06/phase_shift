import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodybite_app/attach/aboutus.dart';
import 'package:foodybite_app/attach/carousal_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'button_card.dart';
import 'constant.dart';
import 'package:foodybite_app/attach/drawer_card.dart';

class SliderPage extends StatefulWidget {
  static String id = 'slider_screen';

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text("Phase Shift"),
      ),
      drawer: DrawerCard(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AboutUs(),

            /*Expanded(
                child: CarousalSlider(),
            ),*/
            SizedBox(
              child: Text(
                'Gallery',
                style: kTextStyle1,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CarouselSlider(
                  options: CarouselOptions(height: 250, autoPlay: true),
                  items: [
                    CarousalSlider(
                      imgPath: 'assets/images/presentation1.jpg',
                    ),
                    CarousalSlider(
                      imgPath: 'assets/images/presentation2.jpg',
                    ),
                    CarousalSlider(
                      imgPath: 'assets/images/presentation3.jpg',
                    ),
                    CarousalSlider(
                      imgPath: 'assets/images/presentation4.jpg',
                    ),
                    CarousalSlider(
                      imgPath: 'assets/images/presentation4.jpg',
                    ),
                  ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              child: Text(
                'Departments',
                style: kTextStyle1,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonContainer(
                    dept: 'CSE',
                  ),
                ),
                Expanded(
                    child: ButtonContainer(
                      dept: 'ISE',
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonContainer(
                    dept: 'ECE',
                  ),
                ),
                Expanded(
                  child: ButtonContainer(
                    dept: 'EEE',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonContainer(
                    dept: 'ML',
                  ),
                ),
                Expanded(
                  child: ButtonContainer(
                    dept: 'ME',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonContainer(
                    dept: 'TC',
                  ),
                ),
                Expanded(
                  child: ButtonContainer(
                    dept: 'CE',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
