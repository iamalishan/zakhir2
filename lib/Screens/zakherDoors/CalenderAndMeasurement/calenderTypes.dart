import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class CalenderTypes extends StatefulWidget {
  const CalenderTypes({Key? key}) : super(key: key);

  @override
  _CalenderTypesState createState() => _CalenderTypesState();
}

class _CalenderTypesState extends State<CalenderTypes> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyBoldHeading(
                  LocaleKeys.Calendarandmeasurement_Sections.tr()),
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
                      alignment: Alignment.topCenter,
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
                  Tab(text: LocaleKeys.Calendarandmeasurement_Tribal.tr()),
                  Tab(
                    text: LocaleKeys.Calendarandmeasurement_Diagnostic.tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                        .Calendarandmeasurement_Formativeconstructivist.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Calendarandmeasurement_Overallfinal.tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Tribal(),
                Diagnostic(),
                Formative(),
                OverallFinal(),
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Tribal extends StatelessWidget {
  const Tribal({
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
              LocaleKeys.Calendarandmeasurement_Determineexperienceandknowledge
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Howreadyareyoutoacquireanewskill
                  .tr(),
            ),
            MyDivider(),
            MyBoldHeading(
                LocaleKeys.Calendarandmeasurement_Calendarmethods.tr()),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Personalinterview.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Aptitudetests.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Diagnostic extends StatelessWidget {
  const Diagnostic({
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
              LocaleKeys
                      .Calendarandmeasurement_Determinelearnersstrengthsandweaknesses
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Definedifficulties.tr(),
            ),
            MyBoldHeading(
                LocaleKeys.Calendarandmeasurement_Calendarmethods.tr()),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_Atesttodeterminetheweaknessesorstrengthsoflearners
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_Aquestionnairetoidentifydifficulties
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class OverallFinal extends StatelessWidget {
  const OverallFinal({
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
              LocaleKeys
                      .Calendarandmeasurement_Theextenttowhichthenewskillisacquired
                  .tr(),
            ),
            MyDivider(),
            MyBoldHeading(
                LocaleKeys.Calendarandmeasurement_Calendarmethods.tr()),
            // MyDetailsList(
            //   LocaleKeys.Calendarandmeasurement_Thefinaltest
            //       .tr(),
            // ),
          ],
        ),
      ),
    );
  }
}

class Formative extends StatelessWidget {
  const Formative({
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
              LocaleKeys.Calendarandmeasurement_Skilllearningdiagnosis.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Solveproblemsinappropriateways
                  .tr(),
            ),
            MyDivider(),
            MyBoldHeading(
                LocaleKeys.Calendarandmeasurement_Calendarmethods.tr()),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Classparticipation.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Notethestudentsperformance.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Homeworkandfollowup.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_SummaryParaphrasingtheconceptsstudied
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_ThinkingThinkaboutwhatyoulearnedandthenwritedownthemostimportantideasthatstuckinyourmind
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_Selfassessmentselfassessmentquestions
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_ColleagueevaluationinteractivecalendarOpeningthedialoguetocomparetheprosandcons
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_Groupevaluationmonitorobstaclesduringactivitiesandthenaskquestionstobediscussed
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Briefexams.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Oralexams.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Theproject.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Boostclasses.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Menus.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .Calendarandmeasurement_Evaluationbasedoncriteriaandcriteria
                  .tr(),
            ),
            MyDivider(),
            MyBoldHeading(LocaleKeys.Calendarandmeasurement_Methods.tr()),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Feedback.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Calendarandmeasurement_Guidancedirections.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
