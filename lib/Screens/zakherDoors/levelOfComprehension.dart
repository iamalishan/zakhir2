import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/Questions.dart';

import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LevelOfComprehension extends StatefulWidget {
  const LevelOfComprehension({Key? key}) : super(key: key);

  @override
  State<LevelOfComprehension> createState() => _LevelOfComprehensionState();
}

class _LevelOfComprehensionState extends State<LevelOfComprehension> {
  var menulist = [
    {
      "name": LocaleKeys
          .zakherDoors_LevelsofcomprehensionandcriticalthinkingScreen_Organizationalprofessionallevel
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/Questions',
    },
    {
      "name": LocaleKeys
          .zakherDoors_LevelsofcomprehensionandcriticalthinkingScreen_Deductiveexplanatorylevel
          .tr(),
      "picture": "assets/images/electronic/2.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .zakherDoors_LevelsofcomprehensionandcriticalthinkingScreen_AppliedlevelCreativeCritical
          .tr(),
      "picture": "assets/images/electronic/3.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .zakherDoors_LevelsofcomprehensionandcriticalthinkingScreen_Profiling
          .tr(),
      "picture": "assets/images/electronic/4.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .zakherDoors_LevelsofcomprehensionandcriticalthinkingScreen_Criticalthinkingstrategies
          .tr(),
      "picture": "assets/images/electronic/5.jpg",
      "route": null,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyBoldHeading(LocaleKeys.Obectives_Sections.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: menulist.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    index: index,
                    itemname: menulist[index]['name'],
                    itemRoute: menulist[index]['route'],
                    itempricture: menulist[index]['picture'],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class SingleGrid extends StatelessWidget {
  final index;
  final itemname;
  final itemRoute;
  final itempricture;

  SingleGrid({
    this.index,
    this.itemname,
    this.itemRoute,
    this.itempricture,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Questions(
                        index: index,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Constant.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(itemname),
              ),

              // Expanded(
              //   child: Image.asset(
              //     itempricture,
              //   ),
              // ),
            ],
          ),
        ));
  }
}
