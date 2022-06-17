import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/view/layout/DetailDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../shared/components/components.dart';

class AddNewRadiolgy extends StatefulWidget {
  AddNewRadiolgy({Key? key}) : super(key: key);

  @override
  State<AddNewRadiolgy> createState() => _AddNewRadiolgyState();
}

class _AddNewRadiolgyState extends State<AddNewRadiolgy> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: cubit.formkeyNewRadiolgy,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(1, 205, 170, 70),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Add New Radiolgy',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: defaultformfiled(
                          controller: cubit.Radiolgynamecontrol,
                          label: 'Radiolgy Name',
                          type: TextInputType.text,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Radiolgy ';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: defaultformfiled(
                          controller: cubit.Radiolgycategorycontrol,
                          label: 'Radiology Category  ',
                          type: TextInputType.text,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Category ';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: defaultformfiled(
                          controller: cubit.Radiolgydescontrol,
                          label: 'Radiolgy Description',
                          type: TextInputType.text,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Description ';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: defaultformfiled(
                          controller: cubit.Radiolgyinstcontrol,
                          label: 'Radiolgy Instructions  ',
                          type: TextInputType.text,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Radiolgy ';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: defaultformfiled(
                          controller: cubit.Radiolgypricecontrol,
                          label: 'Radiology Price',
                          type: TextInputType.text,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Radiolgy ';
                            }
                            return null;
                          }),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: defaultButton(
                          width: 260,
                          text: 'Save',
                          isLoading: cubit.addingRadiolgy,
                          function: () {
                            if (cubit.formkeyNewRadiolgy.currentState!
                                .validate()) {
                              cubit.NewRadiolgy(context);
                            }
                          }),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
