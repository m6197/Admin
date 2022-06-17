import 'package:course1/view/layout/DetailDoctor.dart';
import 'package:flutter/material.dart';
import '../shared/components/components.dart';

class AddNewSpeciality extends StatefulWidget {
  const AddNewSpeciality({Key? key}) : super(key: key);

  @override
  State<AddNewSpeciality> createState() => _AddNewSpecialityState();
}

class _AddNewSpecialityState extends State<AddNewSpeciality> {
  @override
  Widget build(BuildContext context) {
    var Specialitycontrol = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                'Add New Speciality',
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
            children: [],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: defaultformfiled(
                controller: Specialitycontrol,
                label: 'Name of Speciality  ',
                type: TextInputType.text,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Speciality ';
                  }
                  return null;
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 25,
            ),
            child: Text(
              'Add Doctors',
              style: TextStyle(
                color: Color.fromARGB(200, 1, 91, 76),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: TextField(
              onChanged: (value) {
                var x;
                x = x.where((i) => x.contains(value));
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(1, 205, 170, 70),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(1, 205, 170, 70),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 20,
                        ),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset('assets/image/Path 52.png'),
                                const Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  defaultButton(
                    width: 280,
                    text: 'Add',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailDoctor()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 20,
                        ),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset('assets/image/Path 52.png'),
                                const Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  defaultButton(
                    width: 280,
                    text: 'Add',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailDoctor()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 20,
                        ),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset('assets/image/Path 52.png'),
                                const Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  defaultButton(
                    width: 280,
                    text: 'Add',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailDoctor()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 20,
                        ),
                        child: Image.asset(
                          'assets/image/Rectangle 52.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Ahmed Mohamed',
                              style: TextStyle(
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const Text(
                              'Dental Specialis',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(200, 1, 91, 76),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset('assets/image/Path 52.png'),
                                const Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 1, 91, 76),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  defaultButton(
                    width: 280,
                    text: 'Add',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailDoctor()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: const Color.fromRGBO(1, 205, 170, 70),
        focusColor: const Color.fromRGBO(1, 205, 170, 70),
      ),
    );
  }
}
