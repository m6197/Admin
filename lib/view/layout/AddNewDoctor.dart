import 'package:course1/controller/cubit.dart';
import 'package:course1/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../view/shared/components/components.dart';

class AddDoctor extends StatefulWidget {
  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.GET(context);
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                    hasScrollBody: false,
                    child: Form(
                      key: cubit.formkeyNewDoctor,
                      child: Column(
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
                              child: Text(
                                'Add Doctor',
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
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: cubit.doctorImage == null
                                    ? AssetImage(
                                        'assets/image/Ellipse 18.png',
                                      )
                                    : FileImage(
                                        cubit.doctorImage!,
                                      ) as ImageProvider,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 60,
                                  left: 60,
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/image/Group 60.png',
                                  ),
                                  onPressed: () async {
                                    cubit.pickDoctorImage(); // Pick an image
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(children: [
                              defaultformfiled(
                                  controller: cubit.namecontrolNewDoctor,
                                  label: "Name",
                                  prefix: Icons.account_circle,
                                  type: TextInputType.text,
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Name';
                                    }
                                    return null;
                                  }),
                              const SizedBox(
                                height: 10,
                              ),
                              defaultformfiled(
                                  controller: cubit.passcontrollerNewDoctor,
                                  label: 'Password ',
                                  type: TextInputType.text,
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Password';
                                    }
                                    return null;
                                  }),
                              const SizedBox(
                                height: 10,
                              ),
                              defaultformfiled(
                                  controller: cubit.SpecialitycontrolNewDoctor,
                                  label: 'Speciality ',
                                  type: TextInputType.text,
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Speciality ';
                                    }
                                    return null;
                                  }),
                              const SizedBox(
                                height: 10,
                              ),
                              defaultformfiled(
                                  controller: cubit.DemograohycontrolNewDoctor,
                                  label: 'Demograohy',
                                  type: TextInputType.text,
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Demograohy';
                                    }
                                    return null;
                                  }),
                              const SizedBox(
                                height: 10,
                              ),
                              defaultformfiled(
                                  controller: cubit.PricecontrolNewDoctor,
                                  label: 'Price',
                                  type: TextInputType.text,
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Price';
                                    }
                                    return null;
                                  }),
                            ]),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: defaultButton(
                                  width: 160,
                                  isLoading: cubit.addingDoctor,
                                  text: 'Save',
                                  function: () {
                                    if (cubit.formkeyNewDoctor.currentState!
                                        .validate()) {
                                      if (cubit.doctorImage != null) {
                                        cubit.NewDoctor(context);
                                      } else {}
                                    }
                                    ;
                                  }),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          );
        });
  }
}
