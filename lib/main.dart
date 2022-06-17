import 'package:course1/Shared/bloc_observer.dart';
import 'package:course1/Shared/network/local/chache_helper.dart';
import 'package:course1/Shared/network/remote/dio_helper.dart';
import 'package:course1/controller/cubit.dart';
import 'package:course1/view/layout/navscrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      await WidgetsFlutterBinding.ensureInitialized();
      await DioHelper.init();
      await CacheHelper.init();
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(426, 928),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => MainCubit()
                  ..getDoctors()
                  ..getAvailableRadiology()
                  ..getAvailableAnalysis())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Nabdat Admin',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: navscreen(),
          ),
        );
      },
    );
  }
}
