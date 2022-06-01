import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class StudentForms extends StatefulWidget {
  const StudentForms({Key? key}) : super(key: key);

  @override
  State<StudentForms> createState() => _StudentFormsState();
}

class _StudentFormsState extends State<StudentForms> {
  var studentForms = [
    {
      "name":
          LocaleKeys.StudentPortal_zakherDoors_Froms_DailyDictationCard.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Froms_Spellingcard.tr(),
      "picture": "assets/images/zakherDoors/2.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_Froms_Lessonsummarycardfortheabsentstudent
          .tr(),
      "picture": "assets/images/zakherDoors/3.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_Froms_LinguisticPhenomenaExtractCard.tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_Froms_Linguisticphenomenacard1.tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_Froms_Linguisticphenomenacard2.tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Froms_Wordanalysiscard.tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_Froms_Punctuationcard.tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": null,
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
            child:
                MyBoldHeading(LocaleKeys.StudentPortal_zakherDoors_Forms.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: studentForms.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: studentForms[index]['name'],
                    item2ndname: studentForms[index]['2nd_name'],
                    itempricture: studentForms[index]['picture'],
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
  final item2ndname;
  final itempricture;

  SingleGrid({
    this.itemname,
    this.item2ndname,
    this.itempricture,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          // Navigator.pushNamed(context, item2ndname);
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
              Image.asset(itempricture),
              Padding(
                padding: const EdgeInsets.all(12.0),
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
