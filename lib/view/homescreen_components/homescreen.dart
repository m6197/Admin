import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/view/layout/AddNewDoctor.dart';
import 'package:course1/view/layout/Analysis.dart';
import 'package:course1/view/layout/Radiolgy_Screen.dart';
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  cardBuilder(
                                      "Add Doctor",
                                      "assets/image/noun-doctor-987749.png",
                                      AddDoctor(),
                                      context)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  cardBuilder(
                                      "All Doctor",
                                      "assets/image/noun-doctor-987749.png",
                                      Doctor_screen(),
                                      context)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  cardBuilder(
                                      "Add Radiolgy",
                                      "assets/image/noun-x-ray-4792268.png",
                                      Doctor_screen(),
                                      context)
                                ],
                              ),
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
