import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class LearningOutcome extends StatefulWidget {
  const LearningOutcome({Key? key}) : super(key: key);

  @override
  _LearningOutcomeState createState() => _LearningOutcomeState();
}

class _LearningOutcomeState extends State<LearningOutcome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyBoldHeading(LocaleKeys
                  .Calendarandmeasurement_LearningOutcomeMeasurement.tr()),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Constant.backgroundColor,
              ),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/tab.png',
                      )),
                  // color: Colors.green[300],
                  // borderRadius: BorderRadius.circular(25.0)
                ),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                tabs: [
                  Tab(text: LocaleKeys.Calendarandmeasurement_Knowledge.tr()),
                  Tab(
                    text: LocaleKeys.Calendarandmeasurement_Skills.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Calendarandmeasurement_Competencies.tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Knowledge(),
                Skills(),
                Competencies(),
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Memory.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Understanding.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Application.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Analysis.tr(),
            ),
            MyBoldHeading(LocaleKeys.Calendarandmeasurement_Composition.tr()),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Calendar.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Competencies extends StatelessWidget {
  const Competencies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Criticalthinking.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_ProblemSolving.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Written.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Communication.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Oralcommunication.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Technologyuse.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Teamwork.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Researchandanalysis.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Socialresponsibility.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
