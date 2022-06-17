import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/view/layout/DetailDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../shared/components/components.dart';

class AddNewAnalysis extends StatefulWidget {
  AddNewAnalysis({Key? key}) : super(key: key);

  @override
  State<AddNewAnalysis> createState() => _AddNewAnalysisState();
}

class _AddNewAnalysisState extends State<AddNewAnalysis> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: cubit.formkeyNewAnalysis,
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
                          'Add New Analysis',
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
                          controller: cubit.Analysisnamecontrol,
                          label: 'Analysis Name',
                          type: TextInputType.text,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Analysis ';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: defaultformfiled(
                          controller: cubit.Analysiscategorycontrol,
                          label: 'Analysis Category  ',
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
                          controller: cubit.Analysisdescontrol,
                          label: 'Analysis Description',
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
                          controller: cubit.Analysisinstcontrol,
                          label: 'Analysis Instructions  ',
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
                          controller: cubit.Analysispricecontrol,
                          label: 'Analysis Price',
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
                            if (cubit.formkeyNewAnalysis.currentState!
                                .validate()) {
                              cubit.NewAnalysis(context);
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
