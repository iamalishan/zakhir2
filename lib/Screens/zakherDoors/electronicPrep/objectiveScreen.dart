import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ObjectivesScreen extends StatefulWidget {
  const ObjectivesScreen({Key? key}) : super(key: key);

  @override
  State<ObjectivesScreen> createState() => _ObjectivesScreenState();
}

class _ObjectivesScreenState extends State<ObjectivesScreen> {
  var cognitiveList = [
    {
      "name": LocaleKeys.Obectives_Reachthegoal.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/ReachingTheGoal',
    },
    {
      "name": LocaleKeys.Obectives_GoalReachCard.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.Obectives_GoalsClassification.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/GoalsClassification',
    },
    {
      "name": LocaleKeys.Obectives_Goalcard.tr(),
      "picture": "assets/images/electronic/1.jpg",
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

class ReachingTheGoal extends StatefulWidget {
  const ReachingTheGoal({Key? key}) : super(key: key);

  @override
  State<ReachingTheGoal> createState() => _ReachingTheGoalState();
}

class _ReachingTheGoalState extends State<ReachingTheGoal> {
  var cognitiveList = [
    {
      "name": LocaleKeys
          .Obectives_CognitiveGoalsScreen_ReachtheGoal_GuidedReading.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .Obectives_CognitiveGoalsScreen_ReachtheGoal_Learningtable.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .Obectives_CognitiveGoalsScreen_ReachtheGoal_Askingquestions.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .Obectives_CognitiveGoalsScreen_ReachtheGoal_Questionhead.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
  ];
  var cards = [
    {
      "name": LocaleKeys.Obectives_CognitiveGoalsScreen_ReachtheGoal_card1.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.Obectives_CognitiveGoalsScreen_ReachtheGoal_Card2.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.Obectives_CognitiveGoalsScreen_ReachtheGoal_Card3.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.Obectives_CognitiveGoalsScreen_ReachtheGoal_Card4.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyBoldHeading(LocaleKeys.Obectives_Objectives.tr()),
              ),
              Text('-'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyBoldHeading(LocaleKeys.Obectives_Reachthegoal.tr()),
              ),
            ],
          ),
          GridView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true,

              // scrollDirection: Axis.vertical,
              // shrinkWrap: false,
              itemCount: cognitiveList.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
              itemBuilder: (BuildContext context, int index) {
                return SingleGrid(
                  itemname: cognitiveList[index]['name'],
                  itemRoute: cognitiveList[index]['route'],
                  itempricture: cognitiveList[index]['picture'],
                );
              }),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: MyBoldHeading(LocaleKeys
                .Obectives_CognitiveGoalsScreen_ReachtheGoal_Addcards.tr()),
          ),
          GridView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true,

              // scrollDirection: Axis.vertical,
              // shrinkWrap: false,
              itemCount: cards.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
              itemBuilder: (BuildContext context, int index) {
                return SingleGrid(
                  itemname: cards[index]['name'],
                  itemRoute: cards[index]['route'],
                  itempricture: cards[index]['picture'],
                );
              }),
        ],
      ),
    );
  }
}
