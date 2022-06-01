import 'package:flutter/material.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class AssignmentAndTask extends StatefulWidget {
  const AssignmentAndTask({Key? key}) : super(key: key);

  @override
  State<AssignmentAndTask> createState() => _AssignmentAndTaskState();
}

class _AssignmentAndTaskState extends State<AssignmentAndTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: MyBoldHeading(LocaleKeys.Obectives_AdditionTemplate.tr()),
            ),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Subject.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Target.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Thelesson.tr()),
            MyCustomTextField(LocaleKeys.Obectives_Thepage.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Date.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Period.tr()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    onPressed: () async {
                      await context.setLocale(Locale('ar'));
                    },
                    textColor: Colors.white,
                    color: Color(0XFF036268),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(LocaleKeys
                        .ElectronicPreparation_Assignmentandtask.tr())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                child: MyCustomTextField(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
