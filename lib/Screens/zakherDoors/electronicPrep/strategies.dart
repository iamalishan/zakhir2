import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';

import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Strategies extends StatefulWidget {
  const Strategies({Key? key}) : super(key: key);

  @override
  State<Strategies> createState() => _StrategiesState();
}

class _StrategiesState extends State<Strategies> {
  var menulist = [
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Mentalvisualization.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
              .ElectronicPreparation_StrategiesScreen_LearningschedulestrategyKWI
          .tr(),
      "picture": "assets/images/electronic/2.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
              .ElectronicPreparation_StrategiesScreen_Strategystepstowardstreasure
          .tr(),
      "picture": "assets/images/electronic/3.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.ElectronicPreparation_StrategiesScreen_Gescostrategy.tr(),
      "picture": "assets/images/electronic/4.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_FryerModel.tr(),
      "picture": "assets/images/electronic/5.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Summarizingtheresults.tr(),
      "picture": "assets/images/electronic/6.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Problemsolvingstrategy.tr(),
      "picture": "assets/images/electronic/7.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.ElectronicPreparation_StrategiesScreen_Strategy4th.tr(),
      "picture": "assets/images/electronic/8.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_OneMinuteStrategy.tr(),
      "picture": "assets/images/electronic/9.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_FindtheErrorStrategy.tr(),
      "picture": "assets/images/electronic/10.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
              .ElectronicPreparation_StrategiesScreen_MarryParticipateThinkstrategy
          .tr(),
      "picture": "assets/images/electronic/11.jpg",
      "route": "/LearningStyle",
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Choppercardsstrategy.tr(),
      "picture": "assets/images/electronic/12.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Fourcornersstrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Criticalthinkingstrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Brainstormingstrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_Tiktokstrategys
          .tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.ElectronicPreparation_StrategiesScreen_WhoamIstrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Roleplayingstrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Strategytogetthemoon.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
              .ElectronicPreparation_StrategiesScreen_Collaborativelearningstrategy
          .tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Notetakingstrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_Wordmapstrategy
          .tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Openendedquestions.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.ElectronicPreparation_StrategiesScreen_Deepquestions.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.ElectronicPreparation_StrategiesScreen_Surveystrategy.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_Conclusion.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_Induction.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.ElectronicPreparation_StrategiesScreen_Discrimination.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Compareandcontrast.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Determinecauseandeffect.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Definethepriorities.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
              .ElectronicPreparation_StrategiesScreen_Checkingforconsistencyinproofs
          .tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .ElectronicPreparation_StrategiesScreen_Gettoknowthepointsofview.tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_ArgumentAnalysis
          .tr(),
      "picture": "assets/images/electronic/13.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.ElectronicPreparation_StrategiesScreen_Opencard.tr(),
      "picture": "assets/images/electronic/13.jpg",
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
            child: MyBoldHeading(LocaleKeys
                .ElectronicPreparation_StrategiesScreen_Strategies.tr()),
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
