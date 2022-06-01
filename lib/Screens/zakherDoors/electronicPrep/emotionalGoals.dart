import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class EmotionalGoals extends StatefulWidget {
  const EmotionalGoals({Key? key}) : super(key: key);

  @override
  _EmotionalGoalsState createState() => _EmotionalGoalsState();
}

class _EmotionalGoalsState extends State<EmotionalGoals> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
                      text: LocaleKeys
                          .Obectives_CognitiveGoalsScreen_Receptivity.tr()),
                  Tab(
                    text:
                        LocaleKeys.Obectives_CognitiveGoalsScreen_Response.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Obectives_CognitiveGoalsScreen_Evaluation
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys.Obectives_CognitiveGoalsScreen_Organization
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                        .Obectives_CognitiveGoalsScreen_Discrimination.tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Receptivity(),
                Response(),
                Evaluation(),
                Organization(),
                Discrimination(),
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Receptivity extends StatelessWidget {
  const Receptivity({
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
            LocaleKeys.Obectives_CognitiveGoalsScreen_Listen.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Accept.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Ifollow.tr(),
          ),
          MyDivider(),
          MyDetailsList(
            LocaleKeys.Obectives_CognitiveGoalsScreen_Ask.tr(),
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

class Response extends StatelessWidget {
  const Response({
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Ivolunteer.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Share.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Iseek.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Search.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Help.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Support.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Organize.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Generalize.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Fairest.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_banlance.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class Discrimination extends StatelessWidget {
  const Discrimination({
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
      ),
    );
  }
}

class Evaluation extends StatelessWidget {
  const Evaluation({
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
              LocaleKeys.Obectives_CognitiveGoalsScreen_Idecide.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_contribute.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Suggest.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Targue.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.Obectives_CognitiveGoalsScreen_Istart.tr(),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}
