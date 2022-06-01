import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zakhir/Helper/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    splashToOther(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light),
      ),
      body: Container(
          height: Constant.getHeight(context),
          width: Constant.getWidth(context),
          color: Colors.white,
          child: Image.asset(
            'assets/images/SplashScreen.png',
            fit: BoxFit.cover,
          )

          // child: Text(
          //   "Zakher",
          //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          // ),

          ),
    );
  }

  splashToOther(context) {
    Future.delayed(const Duration(milliseconds: 1000), () async {
      // if (Seller().userId.isNotEmpty) {
      //   Navigator.pushReplacementNamed(context, "/home");
      // } else {
      Navigator.pushReplacementNamed(context, "/login");
      // }
    });
  }
}
