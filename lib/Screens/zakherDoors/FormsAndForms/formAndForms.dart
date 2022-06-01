import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class FormsAndForms extends StatefulWidget {
  const FormsAndForms({Key? key}) : super(key: key);

  @override
  State<FormsAndForms> createState() => _FormsAndFormsState();
}

class _FormsAndFormsState extends State<FormsAndForms> {
  var formsAndForms = [
    {
      "name": LocaleKeys.zakherDoors_FormAndForms_Forms.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/Forms",
    },
    {
      "name": LocaleKeys.zakherDoors_FormAndForms_Publications.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/Publications",
    },
    {
      "name": LocaleKeys.zakherDoors_FormAndForms_Achievementfile.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": "/AchievementFile",
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
                LocaleKeys.zakherDoors_FormAndForms_Formsandforms.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: formsAndForms.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: formsAndForms[index]['name'],
                    itemRoute: formsAndForms[index]['route'],
                    itempricture: formsAndForms[index]['picture'],
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

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
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
                  MyBoldHeading(LocaleKeys.zakherDoors_FormAndForms_Forms.tr()),
            ),
            MyDetailsList(
                LocaleKeys.zakherDoors_FormAndForms_Lessonpreparationplan.tr()),
            MyDivider(),
            MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Worksheets.tr()),
          ],
        ),
      ),
    );
  }
}

class Publications extends StatefulWidget {
  const Publications({Key? key}) : super(key: key);

  @override
  State<Publications> createState() => _PublicationsState();
}

class _PublicationsState extends State<Publications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: MyBoldHeading(
                    LocaleKeys.zakherDoors_FormAndForms_Publications.tr()),
              ),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Feedbackform.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Performancefollowupform
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Followupoforalreadingperformance
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Learnerlevelfollowupform
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_LevelTrackingForm.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_ProgramEvaluationForm
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Followupform.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_LearnersCalendar.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_FollowupRecordCover.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Followrecordcover.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Achievementrecordcover
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Searchhistorycover.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Coverofasearchlogtitled
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Introductiontoresearch
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Researchresults.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Testmodel.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Behaviortrackingcard
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_ResultsAnalysisCard.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_ExcellenceCard.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Cardofweaknessandfailure
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Keeptrackoflowlevels
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Qualitativeimpairmenttreatment
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Addressingeducationalloss
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Followupform.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Absencefollowupform.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Classparticipationfollowupform
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Importantwaystoavoidfailure
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_ProfessionalLearning
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Practicalcalendarcard
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Form.tr()),
            ],
          ),
        ),
      ),
    );
  }
}

class AchievementFile extends StatefulWidget {
  const AchievementFile({Key? key}) : super(key: key);

  @override
  State<AchievementFile> createState() => _AchievementFileState();
}

class _AchievementFileState extends State<AchievementFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: MyBoldHeading(
                    LocaleKeys.zakherDoors_FormAndForms_Achievementfile.tr()),
              ),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Covercui.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_CV2.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Mygoals.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_TrainingPrograms.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Assignmentofweeklywork
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Weeklyclassschedule.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Activityreport.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Educationaldevelopmentplan
                  .tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Subjecttestschedule.tr()),
              MyDivider(),
              MyDetailsList(
                  LocaleKeys.zakherDoors_FormAndForms_Worksheetseparator.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Organizerofmyachievements
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys
                  .zakherDoors_FormAndForms_Certificatesofthanksandappreciation
                  .tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Myposts.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Mytasks.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Fileindex.tr()),
              MyDivider(),
              MyDetailsList(LocaleKeys.zakherDoors_FormAndForms_Model.tr()),
            ],
          ),
        ),
      ),
    );
  }
}
