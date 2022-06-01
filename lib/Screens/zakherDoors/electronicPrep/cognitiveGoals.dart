import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class CognitiveGoals extends StatefulWidget {
  const CognitiveGoals({Key? key}) : super(key: key);

  @override
  _CognitiveGoalsState createState() => _CognitiveGoalsState();
}

class _CognitiveGoalsState extends State<CognitiveGoals> {
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
                      text: LocaleKeys.Obectives_CognitiveGoalsScreen_Memory
                          .tr()),
                  Tab(
                    text: LocaleKeys
                        .Obectives_CognitiveGoalsScreen_Understanding.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Obectives_CognitiveGoalsScreen_Application
                        .tr(),
                  ),
                  Tab(
                    text:
                        LocaleKeys.Obectives_CognitiveGoalsScreen_Analysis.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Obectives_CognitiveGoalsScreen_Composition
                        .tr(),
                  ),
                  Tab(
                    text:
                        LocaleKeys.Obectives_CognitiveGoalsScreen_Calender.tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Memory(),
                Understanding(),
                Application(),
                Analysis(),
                Composition(),
                Calender()
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Memory extends StatelessWidget {
  const Memory({
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
            LocaleKeys.Obectives_CognitiveGoalsScreen_Iremember.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Prepare.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Iknow.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Iputacircle.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Select.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Takeback.tr(),
          ),
          MyDivider(),
        ],
      ),
    );
  }
}

class Understanding extends StatelessWidget {
  const Understanding({
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Explain.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Conclude.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Describe.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Translate.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Explain.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Sumup.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Forge.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class Analysis extends StatelessWidget {
  const Analysis({
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Isolve.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Tie.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Prove.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Part.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Ishow.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Classify.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_banlance.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Compare.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Calender extends StatelessWidget {
  const Calender({
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
            LocaleKeys.Obectives_CognitiveGoalsScreen_Affect.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Revise.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Persevere.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Use.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Suggest.tr(),
          ),
          MyDivider(),
        ],
      ),
    );
  }
}

class Composition extends StatelessWidget {
  const Composition({
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Ride.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Squint.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Seinstalled.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Deaf.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Invent.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Compose.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_lbalance.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Produce.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Extract.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_derive.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Application extends StatelessWidget {
  const Application({
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Isolve.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Use.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Clearer.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Justify.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Apply.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Extract.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Prove.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Heexpressed.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Use.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
