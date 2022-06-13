import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:course1/layoutComponents/bones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AddNewSpeciality.dart';

class SpecialityScreen extends StatefulWidget {
  @override
  State<SpecialityScreen> createState() => _SpecialityScreenState();
}

class _SpecialityScreenState extends State<SpecialityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
            child: Text(
              'Speciality',
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
                  onTap: () => () {},
                  child: const Text(
                    'All',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ButtonBarEntry(
                    onTap: () => setState(() {}),
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
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                      minimumSize: const Size(105, 50),
                      maximumSize: const Size(110, 50),
                      primary: const Color.fromRGBO(1, 205, 170, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text("Bones"),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BonesScreen()),
                    ),
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
                    child: const Text(
                      "Considerration",
                      style: TextStyle(
                        fontSize: 12.5,
                      ),
                    ),
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
                    child: const Text("Skin Desies"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          this.context,
          MaterialPageRoute(builder: (context) => const AddNewSpeciality()),
        );
      },
        child :  const Icon(
          Icons.add,

        ),
        backgroundColor: const Color.fromRGBO(1, 205, 170,70),
        focusColor: const Color.fromRGBO(1, 205, 170,70),
      ),
    );
  }
}
