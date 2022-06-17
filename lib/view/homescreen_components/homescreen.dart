import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/view/layout/AddNewAnalysis.dart';
import 'package:course1/view/layout/AddNewDoctor.dart';
import 'package:course1/view/layout/AddNewRadiolgy.dart';
import 'package:course1/view/layout/Analysis.dart';
import 'package:course1/view/layout/Radiolgy_Screen.dart';
import 'package:course1/view/layout/chooseDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../view/layout/DetailDoctor.dart';
import '../../view/layout/Speciality_screen.dart';
import '../../view/layout/doctors_screen.dart';

class homescrren extends StatefulWidget {
  homescrren({Key? key}) : super(key: key);

  @override
  State<homescrren> createState() => _homescrrenState();
}

class _homescrrenState extends State<homescrren> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return cubit.loadingDoctors
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hello Admin',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/image/noun-profile-709597.png',
                                  ),
                                  height: 55,
                                  width: 55,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "Add Doctor",
                                  "assets/image/noun-doctor-987749.png",
                                  AddDoctor(),
                                  context),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "All Doctor",
                                  "assets/image/noun-doctor-987749.png",
                                  Doctor_screen(),
                                  context),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "Add Radiolgy",
                                  "assets/image/noun-x-ray-4792268.png",
                                  AddNewRadiolgy(),
                                  context),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "All Radiolgy",
                                  "assets/image/noun-x-ray-4792268.png",
                                  RadiolgyScreen(),
                                  context),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "Add Analysis",
                                  "assets/image/noun-test-tube-987718.png",
                                  AddNewAnalysis(),
                                  context),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "All Analysis",
                                  "assets/image/noun-test-tube-987718.png",
                                  AnalysisScreen(),
                                  context),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "Add Schedule",
                                  "assets/image/noun-report-987711.png",
                                  ChooseDoctor("Add"),
                                  context),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "Edit Schedule",
                                  "assets/image/noun-report-987711.png",
                                  ChooseDoctor("Edit"),
                                  context),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: cardBuilder(
                                  "Delete Schedule",
                                  "assets/image/noun-report-987711.png",
                                  ChooseDoctor("Delete"),
                                  context),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                );
        });
  }

  Widget cardBuilder(String title, String photo, var route, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          this.context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(1, 205, 170, 190),
                  ),
                  child: Image(
                    image: AssetImage(
                      photo,
                    ),
                    height: 72,
                    width: 72,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 10.0,
                    end: 3.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 11),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
