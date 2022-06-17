import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/model/DoctorModel.dart';
import 'package:course1/view/layout/AddNewDoctor.dart';
import 'package:course1/view/layout/AddSchedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/components/components.dart';

class ChooseDoctor extends StatelessWidget {
  final String method;
  ChooseDoctor(this.method);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(1, 205, 170, 70),
              toolbarHeight: 0,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: double.infinity,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(1, 205, 170, 70),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0.r),
                      bottomLeft: Radius.circular(20.0.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      Center(
                        child: Text(
                          'Doctors',
                          style: TextStyle(
                            fontSize: 32.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                allDoctors(cubit.doctors),
              ]),
            ),
          );
        });
  }

  Widget doctor(context, Doctor doctorModel) {
    return Padding(
      padding: EdgeInsets.all(15.0),
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
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 50,
                    top: 20,
                  ),
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundImage: NetworkImage(doctorModel.photo),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr ' + doctorModel.name,
                        style: TextStyle(
                          color: Color.fromARGB(200, 1, 91, 76),
                        ),
                      ),
                      Text(
                        doctorModel.specialize + ' Specialis',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(200, 1, 91, 76),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/image/Path 52.png'),
                          Text(
                            '${doctorModel.rate == null ? '' : doctorModel.rate}',
                            style: TextStyle(
                              color: Color.fromARGB(200, 1, 91, 76),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
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
              text: 'Choose Doctor',
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AddSchedule(doctorModel.id, method)));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget allDoctors(List<Doctor> doctors) {
    return ListView.builder(
      itemCount: doctors.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return doctor(context, doctors[index]);
      },
    );
  }

  Widget availableDoctor(List<Doctor> doctors, String day) {
    print(doctors[0].schedule.tue_time);
    print(day);
    return Container();
  }
}
