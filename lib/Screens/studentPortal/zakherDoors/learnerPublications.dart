import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LearnerPublications extends StatefulWidget {
  const LearnerPublications({Key? key}) : super(key: key);

  @override
  State<LearnerPublications> createState() => _LearnerPublicationsState();
}

class _LearnerPublicationsState extends State<LearnerPublications> {
  var learnerPublications = [
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Achievementrecordcover
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Searchhistorycover
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Coverofasearchlogtitled
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Introductiontoresearch
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Researchresults
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_CurriculumVitae
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_LearnerPublicationsScreen_Mygoals.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_TrainingPrograms
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Assignmentofweeklywork
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Weeklyclassschedule
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Activityreport
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Examsschedule
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Worksheetseparator
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Organizerofmyachievements
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_LearnerPublicationsScreen_Certificatesofthanksandappreciation
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_LearnerPublicationsScreen_Myposts.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_LearnerPublicationsScreen_Mytasks.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_LearnerPublicationsScreen_Fileindex.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_LearnerPublicationsScreen_Model.tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
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
            child: MyBoldHeading(LocaleKeys
                    .StudentPortal_zakherDoors_LearnerPublicationsScreen_LearnerPublications
                .tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: learnerPublications.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: learnerPublications[index]['name'],
                    item2ndname: learnerPublications[index]['2nd_name'],
                    itempricture: learnerPublications[index]['picture'],
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
