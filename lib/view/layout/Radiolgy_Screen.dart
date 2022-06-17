import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:course1/view/layoutComponents/X-rays.dart';
import 'package:flutter/material.dart';

import 'AddNewRadiolgy.dart';

class RadiolgyScreen extends StatefulWidget {
  @override
  State<RadiolgyScreen> createState() => _RadiolgyScreenState();
}

class _RadiolgyScreenState extends State<RadiolgyScreen> {
  bool showContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              color: const Color.fromRGBO(1, 205, 170, 70),
              borderRadius: const BorderRadius.only(
                bottomRight: const Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: const Center(
              child: Text(
                'Radiolgy',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //inverted selection button bar
              AnimatedButtonBar(
                backgroundColor: const Color.fromRGBO(1, 205, 170, 190),
                foregroundColor: const Color.fromRGBO(1, 205, 170, 120),
                radius: 25.0,
                padding: const EdgeInsets.all(16.0),
                invertedSelection: false,
                children: [
                  ButtonBarEntry(
                    onTap: () => print('first item tapped'),
                    child: const Text(
                      'All',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ButtonBarEntry(
                      onTap: () => print('Third item tapped'),
                      child: const Text(
                        'Avaliable Today',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  ButtonBarEntry(
                    onTap: () => print('Third item tapped'),
                    child: const Text(
                      'Cancel',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(105, 50),
                    maximumSize: const Size(110, 50),
                    primary: const Color.fromRGBO(1, 205, 170, 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text("X-rays"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Xrays()),
                    );
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(90, 50),
                    maximumSize: const Size(115, 50),
                    primary: const Color.fromRGBO(1, 205, 170, 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text("  X-rays with \n        dye"),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(90, 50),
                    maximumSize: const Size(105, 50),
                    primary: const Color.fromRGBO(1, 205, 170, 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    "Ultrasound",
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            this.context,
            MaterialPageRoute(builder: (context) => const AddNewRadiolgy()),
          );
        },
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: const Color.fromRGBO(1, 205, 170, 70),
        focusColor: const Color.fromRGBO(1, 205, 170, 70),
      ),
    );
  }
}
