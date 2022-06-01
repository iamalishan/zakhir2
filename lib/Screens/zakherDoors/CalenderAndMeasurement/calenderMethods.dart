import 'package:flutter/material.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CalenderMethods extends StatefulWidget {
  const CalenderMethods({Key? key}) : super(key: key);

  @override
  State<CalenderMethods> createState() => _CalenderMethodsState();
}

class _CalenderMethodsState extends State<CalenderMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyBoldHeading(LocaleKeys.Calendarandmeasurement_Methods.tr()),
                SizedBox(
                  height: 20,
                ),
                MyDetailsListArrow(LocaleKeys
                        .Calendarandmeasurement_Methodsofevaluatingtheemotionalsphere
                    .tr()),
                MyDivider(),
                MyDetailsListArrow(LocaleKeys
                        .Calendarandmeasurement_Readingcomprehensionassessmentcard
                    .tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Thinkingmaps.tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Creativecalendar.tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Writtenreports.tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Oralinterviews.tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Achievementfiles.tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Practicalcalendar.tr()),
                MyDivider(),
                MyDetailsListArrow(
                    LocaleKeys.Calendarandmeasurement_Selfcalendar.tr()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
