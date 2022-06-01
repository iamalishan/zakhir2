import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CognitiveLearning extends StatefulWidget {
  const CognitiveLearning({Key? key}) : super(key: key);

  @override
  State<CognitiveLearning> createState() => _CognitiveLearningState();
}

class _CognitiveLearningState extends State<CognitiveLearning> {
  var cognitiveList = [
    {
      "name":
          LocaleKeys.zakherDoors_CognitiveLearningAndStyles_Visuallearner.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .zakherDoors_CognitiveLearningAndStyles_Theprintorientedlearner
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .zakherDoors_CognitiveLearningAndStyles_Kinestheticlearner
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.zakherDoors_CognitiveLearningAndStyles_ActiveLearner.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.zakherDoors_CognitiveLearningAndStyles_Auditorylearner
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.zakherDoors_CognitiveLearningAndStyles_Model.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/CognitiveModel',
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
            child: MyBoldHeading(LocaleKeys
                .zakherDoors_CognitiveLearningAndStyles_CognitiveLearningAndStyles
                .tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: cognitiveList.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: cognitiveList[index]['name'],
                    itemRoute: cognitiveList[index]['route'],
                    itempricture: cognitiveList[index]['picture'],
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
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          itemRoute != null ? Navigator.pushNamed(context, itemRoute) : null;
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

class CognitiveModel extends StatefulWidget {
  const CognitiveModel({Key? key}) : super(key: key);

  @override
  State<CognitiveModel> createState() => _CognitiveModelState();
}

class _CognitiveModelState extends State<CognitiveModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyBoldHeading(LocaleKeys
                  .zakherDoors_CognitiveLearningAndStyles_Sections
                  .tr()),
            ),
            MyDetailsList(LocaleKeys
                .zakherDoors_CognitiveLearningAndStyles_Visuallearner
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_CognitiveLearningAndStyles_Theprintorientedlearner
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_CognitiveLearningAndStyles_Kinestheticlearner
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_CognitiveLearningAndStyles_ActiveLearner
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_CognitiveLearningAndStyles_Auditorylearner
                .tr()),
          ],
        ),
      ),
    );
  }
}
