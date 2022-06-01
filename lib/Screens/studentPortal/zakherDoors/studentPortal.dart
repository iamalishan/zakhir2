import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class StudentPortal extends StatefulWidget {
  const StudentPortal({Key? key}) : super(key: key);

  @override
  State<StudentPortal> createState() => _StudentPortalState();
}

class _StudentPortalState extends State<StudentPortal> {
  var menulist = [
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Foundationladder.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": "/FoundationLadder",
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Lettercards.tr(),
      "picture": "assets/images/zakherDoors/2.jpg",
      "2nd_name": "/LetterCard",
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Forms.tr(),
      "picture": "assets/images/zakherDoors/3.jpg",
      "2nd_name": "/StudentFroms",
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_GeneralInstructions.tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_LearnerPublications.tr(),
      "picture": "assets/images/zakherDoors/5.jpg",
      "2nd_name": "/Learner",
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Capacity.tr(),
      "picture": "assets/images/zakherDoors/6.jpg",
      "2nd_name": "/Capacity",
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
            child: MyBoldHeading(LocaleKeys.zakherDoors_ZakherDoors.tr()),
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
                    itemname: menulist[index]['name'],
                    item2ndname: menulist[index]['2nd_name'],
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
  final itemname;
  final item2ndname;
  final itempricture;

  SingleGrid({
    this.itemname,
    this.item2ndname,
    this.itempricture,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, item2ndname);
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
              Image.asset(itempricture),
              Padding(
                padding: const EdgeInsets.all(12.0),
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
