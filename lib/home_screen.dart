import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                header(size),
                SizedBox(
                  height: size.height / 40,
                ),
                customTextField(size),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: size.width / 1.15,
                    child: RichText(
                      text: const TextSpan(
                        text: "What Are You",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "\tSuffering",
                            style: TextStyle(
                              color: textColor,
                            ),
                          ),
                          TextSpan(
                            text: "\twith?",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                showDiseaseTiles(size),
                showDiseaseTiles(size),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: helpCenterTile(size),
                ),
                availableDoctors(size),
                showAvalibleDoctors(size),
                customButton(size, "+ Book An Appointment"),
                customButton(size, " Covid-19 Emergency Helpline"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customButton(Size size, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: size.height / 18,
        width: size.width / 1.15,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget showAvalibleDoctors(Size size) {
    return SizedBox(
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          doctorCard(size, "Dr. Divyanshi",
              "Cardiologist At Apollo Medical Hospital", 'assets/surgeon.png'),
          doctorCard(size, "Dr. Hafiz Sayeed",
              "Neuro Surgeon, Runs a Private Hospital", 'assets/doctor1.png'),
        ],
      ),
    );
  }

  Widget doctorCard(
      Size size, String name, String description, String imagePath) {
    return Container(
      height: size.height / 4.5,
      width: size.width / 2.4,
      decoration: BoxDecoration(
        color: CardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: size.height / 10,
              width: size.width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "\n$description",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget availableDoctors(Size size) {
    return SizedBox(
      height: size.height / 15,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              text: "Doctors",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "\nAvailable Now",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            color: buttonColor,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget helpCenterTile(Size size) {
    return Container(
      height: size.height / 18,
      width: size.width / 1.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: textColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size.height / 22,
            width: size.width / 8,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/covid.png'),
              ),
            ),
          ),
          RichText(
            text: const TextSpan(
              text: "Click Here For",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "\tCovid-19",
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                TextSpan(
                  text: "\tHelp >>",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showDiseaseTiles(Size size) {
    return SizedBox(
      height: size.height / 12,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          diseaseTiles(size, "Lungs Problem", 'assets/lungs.png'),
          diseaseTiles(size, "Brain Problem", 'assets/brain.png'),
        ],
      ),
    );
  }

  Widget diseaseTiles(Size size, String diseaseName, String imagePath) {
    return Container(
      height: size.height / 16,
      width: size.width / 2.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: textColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: size.height / 22,
            width: size.width / 8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: diseaseName.split(" ").first,
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: diseaseName.split(" ").last,
                        style: const TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customTextField(Size size) {
    return SizedBox(
      height: size.height / 12,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height / 15,
            width: size.width / 1.4,
            decoration: BoxDecoration(
              border: Border.all(color: buttonColor, width: 3),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Symptoms, disease and doctor...",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: size.height / 15,
            width: size.width / 7,
            decoration: BoxDecoration(
              border: Border.all(color: buttonColor, width: 3),
            ),
            child: const Icon(
              Icons.search,
              color: textColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget header(Size size) {
    return SizedBox(
      height: size.height / 9,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
                text: "Good",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "\tMorning",
                    style: TextStyle(color: textColor),
                  ),
                  TextSpan(
                    text: "\nAditya Chaudhary",
                    style: TextStyle(fontSize: 27),
                  ),
                ]),
          ),
          Container(
            height: size.height / 10,
            width: size.height / 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/man.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
