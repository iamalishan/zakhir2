import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class TheExams extends StatefulWidget {
  const TheExams({Key? key}) : super(key: key);

  @override
  State<TheExams> createState() => _TheExamsState();
}

class _TheExamsState extends State<TheExams> {
  var theExams = [
    {
      "name": LocaleKeys.zakherDoors_TheExams_Writtentest.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/WrittenTest",
    },
    {
      "name": LocaleKeys.zakherDoors_TheExams_Oraltest.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/OralTest",
    },
    {
      "name": LocaleKeys.zakherDoors_TheExams_Practicaltest.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/PracticalTest",
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
            child: MyBoldHeading(LocaleKeys.zakherDoors_TheExams_TheExams.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: theExams.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: theExams[index]['name'],
                    itemRoute: theExams[index]['route'],
                    itempricture: theExams[index]['picture'],
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

class WrittenTest extends StatefulWidget {
  const WrittenTest({Key? key}) : super(key: key);

  @override
  State<WrittenTest> createState() => _WrittenTestState();
}

class _WrittenTestState extends State<WrittenTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyBoldHeading(
                  LocaleKeys.zakherDoors_TheExams_Writtentest.tr()),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Constant.backgroundColor,
              ),
              child: TabBar(
                isScrollable: false,
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
                  Tab(text: LocaleKeys.zakherDoors_TheExams_Pans.tr()),
                  Tab(
                    text: LocaleKeys.zakherDoors_TheExams_Objective.tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Pans(),
                Objectives(),
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Pans extends StatelessWidget {
  const Pans({
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
              LocaleKeys.zakherDoors_TheExams_Shortanswers.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Whatdoesthevocabularymean.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Openconstruction.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Cardi.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Objectives extends StatelessWidget {
  const Objectives({
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
              LocaleKeys.zakherDoors_TheExams_Multiplechoice.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Writeoffquestions.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Mating.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Relationshipstatement.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Rearrange.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Rightandwrong.tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.zakherDoors_TheExams_Complementaryparagraphs.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class OralTest extends StatefulWidget {
  const OralTest({Key? key}) : super(key: key);

  @override
  State<OralTest> createState() => _OralTestState();
}

class _OralTestState extends State<OralTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  MyBoldHeading(LocaleKeys.zakherDoors_TheExams_Oraltest.tr()),
            ),
            MyDetailsList(
                LocaleKeys.zakherDoors_TheExams_KnowledgeQuestions.tr()),
            MyDivider(),
            MyDetailsList(
                LocaleKeys.zakherDoors_TheExams_Oralreadingandrecitation.tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys.zakherDoors_TheExams_Savereview.tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys
                .zakherDoors_TheExams_Discussresearchandactivities
                .tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys.zakherDoors_TheExams_Card2.tr()),
          ],
        ),
      ),
    );
  }
}

class PracticalTest extends StatefulWidget {
  const PracticalTest({Key? key}) : super(key: key);

  @override
  State<PracticalTest> createState() => _PracticalTestState();
}

class _PracticalTestState extends State<PracticalTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyBoldHeading(
                  LocaleKeys.zakherDoors_TheExams_Practicaltest.tr()),
            ),
            MyDetailsList(LocaleKeys.zakherDoors_TheExams_Collegemethod.tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys.zakherDoors_TheExams_Syntheticmethod.tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys.zakherDoors_TheExams_Card3.tr()),
          ],
        ),
      ),
    );
  }
}
