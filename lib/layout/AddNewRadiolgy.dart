
import 'package:course1/layout/DetailDoctor.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../shared/components/components.dart';

class AddNewRadiolgy extends StatefulWidget {
  const AddNewRadiolgy({Key? key}) : super(key: key);


  @override
  State<AddNewRadiolgy> createState() => _AddNewRadiolgyState();
}

class _AddNewRadiolgyState extends State<AddNewRadiolgy> {
  @override
  Widget build(BuildContext context) {
    var Specialitycontrol = TextEditingController();
    return Scaffold(
      body: Column(
        children: [

          Container(
            width:double.infinity,
            height: 150,
            decoration:  const BoxDecoration(
              color:  Color.fromRGBO(1, 205, 170,70),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),

            child: const Center(
              child: Text('Add New Radiolgy',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: defaultformfiled(
                controller: Specialitycontrol,
                label: 'Name of Radiolgy  ',
                type: TextInputType.text,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Radiolgy ';
                  }
                  return null;
                }
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,
                top: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child:
              Text('Add Schedules',
                style: TextStyle(
                  color: Color.fromRGBO(1, 91, 76,80),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleSwitch(
              minWidth: 90.0,
              minHeight: 80.0,
              fontSize: 16.0,
              initialLabelIndex: 0,
              activeBgColor: [const Color.fromRGBO(1, 91, 76,100),],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.white,

              totalSwitches: 4,
              labels: ['Mon 11', 'Thu 12', 'Wed 13','Thr 14'],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child:
              Text('Add time',
                style: TextStyle(
                  color: Color.fromRGBO(1, 91, 76,100),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleSwitch(
              minWidth: 90.0,
              minHeight: 55.0,
              fontSize: 16.0,
              initialLabelIndex: 0,
              activeBgColor: [const Color.fromRGBO(1, 91, 76,100),],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.white,

              totalSwitches: 3,
              labels: ['09:00 AM', '10:00 AM', '11:00 AM',],
              onToggle: (index) {
                print('switched to: $index');

              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,
                top: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child:
              Text('Add Description Radiolgy',
                style: TextStyle(
                  color: Color.fromRGBO(1, 91, 76,80),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          const Text('Dr. Ahmed Mohamed is a specialist in dental medicine',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),

          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child:
              defaultButton(
                  width: 260,
                  text: 'Save',
                  function: () {
                  }
              ),
            ),
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}
