import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:zakhir/translations/locale_keys.g.dart';

class Registration extends StatefulWidget {
  // Registration({Key? key }) : super(key: key);

  // final String title;

  @override
  _RegistrationState createState() => _RegistrationState();
}

final _formKey = GlobalKey<FormState>();

class _RegistrationState extends State<Registration> {
  String _dropDownValue = 'Teacher Portal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFf2faff),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Column(
                children: [
                  Image.asset('assets/images/logo.jpg'),
                  Text(
                    'المختصر  في مهارات التدريس و التآسيس',
                    style: TextStyle(color: Color(0xFF8e9093)),
                  ),
                ],
              )),
              // Text(
              //   'ا مختصر في مهارات التدريس و التآسيس',
              //   style: TextStyle(color: Color(0xFF8e9093)),
              // ),
              Text(
                LocaleKeys.registerYourself.tr(),
                style: TextStyle(
                    fontSize: 25,
                    color: const Color(0xFF036268),
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        LocaleKeys.username.tr(),
                        // 'اسم المستخدم',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8b8b8b),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Focus(
                        // debugLabel: 'اسم المستخدم',
                        child: Builder(
                          builder: (BuildContext context) {
                            final FocusNode focusNode = Focus.of(context);
                            final bool hasFocus = focusNode.hasFocus;
                            return TextField(
                                // textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    border: InputBorder.none,
                                    fillColor: hasFocus
                                        ? Colors.white
                                        : Color(0xFFe4f5ff),
                                    filled: true));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        LocaleKeys.email.tr(),
                        // 'كلمة المرور',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8b8b8b),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Focus(
                        // debugLabel: 'اسم المستخدم',
                        child: Builder(
                          builder: (BuildContext context) {
                            final FocusNode focusNode = Focus.of(context);
                            final bool hasFocus = focusNode.hasFocus;
                            return TextField(
                                // obscureText: true,
                                // textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    border: InputBorder.none,
                                    fillColor: hasFocus
                                        ? Colors.white
                                        : Color(0xFFe4f5ff),
                                    filled: true));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        LocaleKeys.Password.tr(),
                        // 'كلمة المرور',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8b8b8b),
                          // fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Focus(
                        // debugLabel: 'اسم المستخدم',
                        child: Builder(
                          builder: (BuildContext context) {
                            final FocusNode focusNode = Focus.of(context);
                            final bool hasFocus = focusNode.hasFocus;
                            return TextField(
                                obscureText: true,
                                // textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    border: InputBorder.none,
                                    fillColor: hasFocus
                                        ? Colors.white
                                        : Color(0xFFe4f5ff),
                                    filled: true));
                          },
                        ),
                      ),
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text(
                      //     'هل نسيت كلمة السر؟ ',
                      //     style: TextStyle(
                      //         fontSize: 16,
                      //         color: Color(0xFF8b8b8b),
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        LocaleKeys.subscription.tr(),
                        // 'كلمة المرور',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8b8b8b),
                          // fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: Constant.getWidth(context),
                        decoration: BoxDecoration(color: Color(0xFFe4f5ff)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DropdownButton(
                            hint: _dropDownValue == null
                                ? Text('Teacher Portal')
                                : Text(
                                    _dropDownValue,
                                    style: TextStyle(
                                        color: Constant.textSecondaryColor),
                                  ),
                            isExpanded: true,
                            icon: Icon(Icons.arrow_downward_sharp),
                            iconSize: 30.0,
                            style: TextStyle(color: Colors.blue),
                            items: [
                              'Teacher portal',
                              'Student portal',
                            ].map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Text(val),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                () {
                                  _dropDownValue = val.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),

                      // TextField(
                      //     obscureText: true,
                      //     // textDirection: TextDirection.rtl,
                      //     decoration: InputDecoration(
                      //         focusedBorder: OutlineInputBorder(
                      //             borderRadius:
                      //                 BorderRadius.all(Radius.circular(5.0)),
                      //             borderSide: BorderSide(color: Colors.blue)),
                      //         border: InputBorder.none,
                      //         fillColor: Color(0xFFe4f5ff),
                      //         filled: true)),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            onPressed: () {
                              Navigator.pushNamed(context, "/MainScreen");
                            },
                            textColor: Colors.white,
                            color: Color(0XFF036268),
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(LocaleKeys.register.tr())),
                        // child: Text('تسجيل الدخول')),
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   child: RaisedButton(
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(10.0))),
                      //       onPressed: () {
                      //         print('Button Clicked.');
                      //       },
                      //       textColor: Colors.white,
                      //       color: Color(0XFFfb9288),
                      //       padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      //       child: Text('تسجيل الدخول كضيف')),
                      // ),
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(LocaleKeys.alreadyHaveAnAccount.tr()),
                        Text(
                          LocaleKeys.login.tr(),
                          style: TextStyle(color: Color(0XFF026168)),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}





// ا مختصر في مهارات التدريس و التآسيس

// تسجيل الدخول

// اسم المستخدم

// كلمة المرور

 

// ليس لديك حساب؟ يسجل
