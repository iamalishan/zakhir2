import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:zakhir/translations/locale_keys.g.dart';

class Login extends StatefulWidget {
  Login({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

final _formKey = GlobalKey<FormState>();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFf2faff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Column(
            children: [
              Image.asset('assets/images/logo.jpg'),
              Text(
                ' المختصر في مهارات التدريس و التآسيس',
                style: TextStyle(color: Color(0xFF8e9093)),
              ),
            ],
          )),
          // Text(
          //   'ا مختصر في مهارات التدريس و التآسيس',
          //   style: TextStyle(color: Color(0xFF8e9093)),
          // ),
          Text(
            LocaleKeys.login.tr(),
            style: TextStyle(
                fontSize: 25,
                color: const Color(0xFF036268),
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    LocaleKeys.username.tr(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF8b8b8b),
                        fontWeight: FontWeight.bold),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.blue)),
                                border: InputBorder.none,
                                fillColor:
                                    hasFocus ? Colors.white : Color(0xFFe4f5ff),
                                filled: true));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.Password.tr(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF8b8b8b),
                        fontWeight: FontWeight.bold),
                  ),
                  Focus(
                    // debugLabel: 'اسم المستخدم',
                    child: Builder(
                      builder: (BuildContext context) {
                        final FocusNode focusNode = Focus.of(context);
                        final bool hasFocus = focusNode.hasFocus;
                        return TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.blue)),
                                border: InputBorder.none,
                                fillColor:
                                    hasFocus ? Colors.white : Color(0xFFe4f5ff),
                                filled: true));
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        LocaleKeys.forgotPassword.tr(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF8b8b8b),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                        child: Text(LocaleKeys.login.tr())),
                  ),
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
                        color: Color(0XFFfb9288),
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(LocaleKeys.loginAsGuest.tr())),
                  ),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              print('object');
              Navigator.pushNamed(context, "/register");
            },
            child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(LocaleKeys.dontHaveAnAccount.tr()),
                    Text(
                      LocaleKeys.register.tr(),
                      style: TextStyle(color: Color(0XFF026168)),
                    ),
                  ],
                )),
          ),
          context.locale.languageCode == 'ar'
              ? TextButton(
                  onPressed: () async {
                    await context.setLocale(Locale('en'));
                  },
                  child: Text('Change Language to English'))
              : TextButton(
                  onPressed: () async {
                    await context.setLocale(Locale('ar'));
                  },
                  child: Text('تغيير اللغة إلى العربية')),
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
