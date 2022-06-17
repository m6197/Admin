import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/view/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSchedule extends StatelessWidget {
  final double id;
  final String method;
  AddSchedule(this.id, this.method);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: cubit.formkeyAddSchdule,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
                      Text(
                        'Please Enter Day Name',
                        style: TextStyle(
                          color: Color.fromRGBO(1, 205, 170, 120),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      defaultformfiled(
                          controller: cubit.AddScheduleDayName,
                          label: '',
                          prefix: null,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your Email';
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Please Enter Schedule time with space between',
                        style: TextStyle(
                          color: Color.fromRGBO(1, 205, 170, 120),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      defaultformfiled(
                          controller: cubit.AddScheduleControl,
                          label: '',
                          prefix: null,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your Email';
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      defaultButton(
                          width: 160,
                          text: 'Next',
                          isLoading: cubit.addingSchedule,
                          function: () {
                            if (cubit.formkeyAddSchdule.currentState!
                                .validate()) {
                              switch (method) {
                                case "Add":
                                  cubit.addDoctorSchedule(id, context);
                                  break;
                                case "Edit":
                                  cubit.editDoctorSchedule(id, context);
                                  break;
                                case "Delete":
                                  cubit.deleteDoctorSchedule(id, context);
                                  break;
                              }
                            }
                          }),
                    ]),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
