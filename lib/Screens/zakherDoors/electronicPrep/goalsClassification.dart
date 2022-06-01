import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class GoalsClassification extends StatefulWidget {
  const GoalsClassification({Key? key}) : super(key: key);

  @override
  State<GoalsClassification> createState() => _GoalsClassificationState();
}

class _GoalsClassificationState extends State<GoalsClassification> {
  var cognitiveList = [
    {
      "name": LocaleKeys.Obectives_Cognitivegoals.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/CognitiveGoals',
    },
    {
      "name": LocaleKeys.Obectives_Emotionalgoals.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/EmotionalGoals',
    },
    {
      "name": LocaleKeys.Obectives_Cognitivegoalspsychomotor.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/CognitiveGoalsPsychomotor',
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
