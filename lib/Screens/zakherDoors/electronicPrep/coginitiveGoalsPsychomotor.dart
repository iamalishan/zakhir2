import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class CognitiveGoalsPsychomotor extends StatefulWidget {
  const CognitiveGoalsPsychomotor({Key? key}) : super(key: key);

  @override
  _CognitiveGoalsPsychomotorState createState() =>
      _CognitiveGoalsPsychomotorState();
}

class _CognitiveGoalsPsychomotorState extends State<CognitiveGoalsPsychomotor> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          children: [
            MyBoldHeading(
                LocaleKeys.Obectives_CognitiveGoalsScreen_BehavioralVerbs.tr()),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Constant.backgroundColor,
              ),
              child: TabBar(
                padding: EdgeInsets.all(5),
                isScrollable: true,
                indicator: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
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
                      text: LocaleKeys.Obectives_CognitiveGoalsScreen_Reception
                          .tr()),
                  Tab(
                    text: LocaleKeys
                        .Obectives_CognitiveGoalsScreen_Initialization.tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                        .Obectives_CognitiveGoalsScreen_Directresponse.tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                        .Obectives_CognitiveGoalsScreen_Mechanicalresponse.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Obectives_CognitiveGoalsScreen_Adaptation
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Obectives_CognitiveGoalsScreen_Organization
                        .tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Reception(),
                Initialization(),
                DirectResponse(),
                MechanicalResponse(),
                Adaption(),
                Organization(),
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Organization extends StatelessWidget {
  const Organization({
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
            SizedBox(
              height: 10,
            ),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Organize.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_improve.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Created.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Deaf.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class Reception extends StatelessWidget {
  const Reception({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Tie.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Recognize.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Unarmed.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Ianswer.tr(),
          ),
          MyDivider(),
        ],
      ),
    );
  }
}

class Initialization extends StatelessWidget {
  const Initialization({
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
            SizedBox(
              height: 10,
            ),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_ShowUp.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Everlasting.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Trespond.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Start.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class MechanicalResponse extends StatelessWidget {
  const MechanicalResponse({
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
            SizedBox(
              height: 10,
            ),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_iamBusy.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Organize.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Read.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Use.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Iwrite.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class Adaption extends StatelessWidget {
  const Adaption({
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
            SizedBox(
              height: 10,
            ),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Howareyou.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Fit.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Types.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Fairest.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class DirectResponse extends StatelessWidget {
  const DirectResponse({
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
            SizedBox(
              height: 10,
            ),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Analyze.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_imeasure.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Check.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Finished.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}
