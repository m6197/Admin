import 'dart:io';

import 'package:course1/Shared/network/remote/dio_helper.dart';
import 'package:course1/Shared/network/remote/end_points.dart';
import 'package:course1/controller/states.dart';
import 'package:course1/model/DoctorModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitState());

  static MainCubit GET(context) => BlocProvider.of(context);

//----------------------Variables-------------------//
  bool loadingDoctors = false;
  List<Doctor> doctors = [];
  var formkeyNewDoctor = GlobalKey<FormState>();
  var namecontrolNewDoctor = TextEditingController();
  var passcontrollerNewDoctor = TextEditingController();
  var SpecialitycontrolNewDoctor = TextEditingController();
  var DemograohycontrolNewDoctor = TextEditingController();
  var PricecontrolNewDoctor = TextEditingController();
  ImagePicker picker = ImagePicker();
  File? doctorImage;
  bool addingDoctor = false;
//------------------------Methods------------------//
  void getDoctors() {
    print(true);
    doctors = [];
    loadingDoctors = true;
    emit(LoadingDoctorState());
    DioHelper.getData(url: GetDoctors).then((value) {
      print(value.data['data']);
      print(value.data.length);
      value.data['data'].forEach((i) {
        doctors.add(Doctor.fromJson(i));
      });
      print(doctors.length);
      loadingDoctors = false;
      emit(SuccessDoctorState());
    }).catchError((onError) {
      print(onError);
      loadingDoctors = false;
      emit(ErrorDoctorState());
    });
  }

  void pickDoctorImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    doctorImage = image == null ? null : File(image.path);
    emit(ImagePickedState());
  }

  void NewDoctor(context) {
    addingDoctor = true;
    emit(LoadingSignupDoctorState());
    DioHelper.postData(url: SignupEndPoint, data: {
      "name": namecontrolNewDoctor.text,
      "bio": DemograohycontrolNewDoctor.text,
      "price": double.parse(PricecontrolNewDoctor.text),
      "specialize": SpecialitycontrolNewDoctor.text,
      "password": passcontrollerNewDoctor.text
    }).then((value) {
      print(value.data);
      UploadDoctorImage(value.data["id"], context);
    });
  }

  void UploadDoctorImage(int id, context) async {
    String fileName = doctorImage!.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file":
          await MultipartFile.fromFile(doctorImage!.path, filename: fileName),
      "id": id
    });
    DioHelper.dio!.post(SetDoctorImage, data: formData).then((value) {
      print(value.data);
      addingDoctor = false;
      emit(SuccessSignupDoctorState());
      getDoctors();
      Navigator.pop(context);
    }).catchError((onError) {
      addingDoctor = false;
      emit(ErrorSignupDoctorState());
      print(onError);
    });
  }
}
