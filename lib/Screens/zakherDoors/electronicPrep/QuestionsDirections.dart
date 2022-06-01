import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class QuestionsDirections extends StatefulWidget {
  const QuestionsDirections({Key? key}) : super(key: key);

  @override
  State<QuestionsDirections> createState() => _QuestionsDirectionsState();
}

class _QuestionsDirectionsState extends State<QuestionsDirections> {
  var cognitiveList = [
    {
      "name": LocaleKeys.QuestionsDiresctions_Studentasksteacher.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Astudentasks.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_TeacherAskaAStudent.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Teacherasksgroup.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Groupaskgroup.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Agroupasksateacher.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Questionfacecard.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": '/QuestionCard',
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
            child: MyBoldHeading(
                LocaleKeys.QuestionsDiresctions_Questiondirections.tr()),
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

class QuestionCard extends StatefulWidget {
  const QuestionCard({Key? key}) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  var cardList = [
    {
      "name": LocaleKeys.QuestionsDiresctions_Card1.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Card2.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Card3.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Card4.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Card5.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.QuestionsDiresctions_Card6.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyBoldHeading(
                  LocaleKeys.QuestionsDiresctions_Questionfacecard.tr()),
            ),
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  itemCount: cardList.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (BuildContext context, int index) {
                    return SingleGrid(
                      itemname: cardList[index]['name'],
                      itemRoute: cardList[index]['route'],
                      itempricture: cardList[index]['picture'],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
