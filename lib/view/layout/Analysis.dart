import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:course1/view/layout/AddNewAnalysis.dart';
import 'package:course1/view/layoutComponents/Coved%2019.dart';
import 'package:flutter/material.dart';

class Analysis_screen extends StatelessWidget {
  const Analysis_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(1, 205, 170, 70),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: const Center(
              child: const Text(
                'Analysis',
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
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  ButtonBarEntry(
                    onTap: () => print('Third item tapped'),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
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
            padding: const EdgeInsets.all(2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(90, 50),
                    maximumSize: const Size(105, 50),
                    primary: const Color.fromRGBO(1, 205, 170, 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text("Coved 19"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CovedScreen()),
                    );
                  },
                ),
                const SizedBox(
                  width: 15,
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
                  child: const Text("CPC"),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 15,
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
                    "DNA",
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
            context,
            MaterialPageRoute(builder: (context) => const AddNewAnalysis()),
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
