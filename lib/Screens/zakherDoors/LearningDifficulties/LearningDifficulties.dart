import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LearningDifficulties extends StatefulWidget {
  const LearningDifficulties({Key? key}) : super(key: key);

  @override
  State<LearningDifficulties> createState() => _LearningDifficultiesState();
}

class _LearningDifficultiesState extends State<LearningDifficulties> {
  var learningDifficulties = [
    {
      "name": LocaleKeys.zakherDoors_LearningdifficultiesScreen_TeachingMethods
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/TeachingMethods",
    },
    {
      "name": LocaleKeys.zakherDoors_LearningdifficultiesScreen_Strategies.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/LearningStrategies",
    },
    {
      "name": LocaleKeys.zakherDoors_LearningdifficultiesScreen_Activities.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/LearningActivites",
    },
    {
      "name": LocaleKeys
          .zakherDoors_LearningdifficultiesScreen_GeneralInstructions
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/GeneralInstructions",
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
                itemCount: learningDifficulties.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: learningDifficulties[index]['name'],
                    itemRoute: learningDifficulties[index]['route'],
                    itempricture: learningDifficulties[index]['picture'],
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

class TeachingMethods extends StatefulWidget {
  const TeachingMethods({Key? key}) : super(key: key);

  @override
  State<TeachingMethods> createState() => _TeachingMethodsState();
}

class _TeachingMethodsState extends State<TeachingMethods> {
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
                  .zakherDoors_LearningdifficultiesScreen_TeachingMethods
                  .tr()),
            ),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_PhonemiclanguageOrton
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Glingham
                .tr()),
            MyDivider(),
            MyDetailsList(
                LocaleKeys.zakherDoors_LearningdifficultiesScreen_Fernair.tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_verbalvisualreading
                .tr()),
          ],
        ),
      ),
    );
  }
}

class LearningStrategies extends StatefulWidget {
  const LearningStrategies({Key? key}) : super(key: key);

  @override
  State<LearningStrategies> createState() => _LearningStrategiesState();
}

class _LearningStrategiesState extends State<LearningStrategies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: MyBoldHeading(LocaleKeys
                    .zakherDoors_LearningdifficultiesScreen_Strategies
                    .tr()),
              ),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Fitzgoldstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Hornstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Closingstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Visualvisualizationstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Sayandwritestrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Spellingskilldevelopmentstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Hierarchicalstrategytoread
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_SoundofTanweenStrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Multisensoryreadingstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Colorstrategyinreading
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Wordblockingandwritingstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_GradualstrategyinwritingTanweenAuditory
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Discriminationtrainingstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Modelingstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_Sensorylinkstrategy
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_LearningdifficultiesScreen_SkillAnalysisStrategy
                  .tr()),
            ],
          ),
        ),
      ),
    );
  }
}

class LearningActivites extends StatefulWidget {
  const LearningActivites({Key? key}) : super(key: key);

  @override
  State<LearningActivites> createState() => _LearningActivitesState();
}

class _LearningActivitesState extends State<LearningActivites> {
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
                  .zakherDoors_LearningdifficultiesScreen_Activities
                  .tr()),
            ),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Reversewordprocessing
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Addressingthelackofknowledgeofthefirstletteroftheword
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Processingnotknowingthelastshelfoftheword
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Reversecharacterprocessing
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Addressingaproblemwiththevowelinthemiddleoftheword
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Endofwordprocessing
                .tr()),
          ],
        ),
      ),
    );
  }
}

class GeneralInstructions extends StatefulWidget {
  const GeneralInstructions({Key? key}) : super(key: key);

  @override
  State<GeneralInstructions> createState() => _GeneralInstructionsState();
}

class _GeneralInstructionsState extends State<GeneralInstructions> {
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
                  .zakherDoors_LearningdifficultiesScreen_GeneralInstructions
                  .tr()),
            ),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Generalguidelinesforwordorletterreversal
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_LearningdifficultiesScreen_Instructionsforhowtolearnalanguage
                .tr()),
          ],
        ),
      ),
    );
  }
}
