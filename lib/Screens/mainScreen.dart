import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/translations/locale_keys.g.dart';

class MainScreen extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MainScreenState createState() => _MainScreenState();
}

final _formKey = GlobalKey<FormState>();

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: const Color(0xFFf2faff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
              child: Column(
            children: [
              Image.asset('assets/images/logo.jpg'),
              Text(
                'المختصر في مهارات التدريس و التآسيس',
                style: TextStyle(color: Color(0xFF8e9093)),
              ),
            ],
          )),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/zakherDoors");
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Constant.backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              width: Constant.getWidth(context) / 1.2,
              height: Constant.getHeight(context) / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/mainLogo/1.jpg'),
                  Text(LocaleKeys.teacherPortal.tr())
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/StudentzakherDoors");
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Constant.backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              width: Constant.getWidth(context) / 1.2,
              height: Constant.getHeight(context) / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/mainLogo/1.jpg'),
                  // Icon(
                  //   Icons.cast_for_education,
                  //   color: Colors.green,
                  //   size: 50.0,
                  // ),
                  // assets\images\main.png
                  Text(LocaleKeys.teacherAndLearner.tr())
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // Text(
          //   'ا مختصر في مهارات التدريس و التآسيس',
          //   style: TextStyle(color: Color(0xFF8e9093)),
          // ),
        ],
      ),
    ));
  }
}





// ا مختصر في مهارات التدريس و التآسيس

// تسجيل الدخول

// اسم المستخدم

// كلمة المرور

 

// ليس لديك حساب؟ يسجل
