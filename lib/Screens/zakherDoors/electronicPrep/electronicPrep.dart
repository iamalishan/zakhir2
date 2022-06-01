import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/QuestionsScreen.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/initializationTemplete.dart';

import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ElectroniPrep extends StatefulWidget {
  const ElectroniPrep({Key? key}) : super(key: key);

  @override
  State<ElectroniPrep> createState() => _ElectroniPrepState();
}

class _ElectroniPrepState extends State<ElectroniPrep> {
  var list = [
    {
      "name": LocaleKeys.ElectronicPreparation_Initialization.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/initilization',
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Objectives.tr(),
      "picture": "assets/images/electronic/2.jpg",
      "route": '/ObjectivesScreen',

      // "route": "/objectiveTemplete",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Strategies.tr(),
      "picture": "assets/images/electronic/3.jpg",
      "route": "/Strategies",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Questiondiresctions.tr(),
      "picture": "assets/images/electronic/4.jpg",
      "route": "/QuestionsDirections",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Enrichments.tr(),
      "picture": "assets/images/electronic/5.jpg",
      "route": "/EnrichmentTemplete",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Browsingstrategy.tr(),
      "picture": "assets/images/electronic/6.jpg",
      "route": "/BrowsingTemplete",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Calendar.tr(),
      "picture": "assets/images/electronic/7.jpg",
      "route": "/CalenderTemplete",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Digitalbarcode.tr(),
      "picture": "assets/images/electronic/8.jpg",
      "route": "/DigitalBarcodeTemplete",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Assignmentandtask.tr(),
      "picture": "assets/images/electronic/9.jpg",
      "route": "/AssignmentAndTask",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Questions.tr(),
      "picture": "assets/images/electronic/10.jpg",
      "route": "/QuestionsScreen",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Learningstyleandstyles.tr(),
      "picture": "assets/images/electronic/11.jpg",
      "route": "/LearningStyle",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Worksheet.tr(),
      "picture": "assets/images/electronic/12.jpg",
      "route": "/TheWorksheetTemplete",
    },
    {
      "name": LocaleKeys.ElectronicPreparation_Thereviewer.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": "/TheReviewerTemplete",
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
            child: MyBoldHeading(
                LocaleKeys.ElectronicPreparation_ElectronicPreparation.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: list.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: list[index]['name'],
                    itemRoute: list[index]['route'],
                    itempricture: list[index]['picture'],
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
  final itemRoute;
  final itempricture;

  SingleGrid({
    this.itemname,
    this.itemRoute,
    this.itempricture,
  });

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, itemRoute);
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
