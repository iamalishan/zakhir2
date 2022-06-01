import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          children: [
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
                  Tab(
                      text: LocaleKeys
                              .ElectronicPreparation_QuestionsDiresctionsScreen_Deepandsuperficial
                          .tr()),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsDiresctionsScreen_Narroworopen
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsDiresctionsScreen_Thinkingquestions
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsDiresctionsScreen_ProbingQuestions
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsDiresctionsScreen_Guidingquestions
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsDiresctionsScreen_Argumentativequestions
                        .tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                DeepAndSuperficial(),
                NarrowOrOpen(),
                ThinkingQuestions(),
                ProbingQuestions(),
                GuidingQuestions(),
                ArgumentativeQuestions()
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class DeepAndSuperficial extends StatelessWidget {
  const DeepAndSuperficial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_Deapth
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_Why
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_How
                  .tr(),
            ),
            MyDivider(),
            SizedBox(
              height: 20,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Surface
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_Where
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_What
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class NarrowOrOpen extends StatelessWidget {
  const NarrowOrOpen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Narrowclosed
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Definiteanswer
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_How
                  .tr(),
            ),
            MyDivider(),
            SizedBox(
              height: 20,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Openthewide
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_GeneralAnswers
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Usefulforbrainstorming
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProbingQuestions extends StatelessWidget {
  const ProbingQuestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Itservesasaguideandhelper
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class ArgumentativeQuestions extends StatelessWidget {
  const ArgumentativeQuestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Thatraisescontroversy
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class GuidingQuestions extends StatelessWidget {
  const GuidingQuestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_whichincludestheanswer
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class ThinkingQuestions extends StatelessWidget {
  const ThinkingQuestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Itmeasureslowerorder
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsDiresctionsScreen_Itmeasureshigherorder
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}
