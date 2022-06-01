import 'package:flutter/material.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ObjectiveTemplete extends StatefulWidget {
  const ObjectiveTemplete({Key? key}) : super(key: key);

  @override
  State<ObjectiveTemplete> createState() => _ObjectiveTempleteState();
}

class _ObjectiveTempleteState extends State<ObjectiveTemplete> {
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
              child: MyBoldHeading('Objective Templete'),
            ),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Subject.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Today.tr()),
            MyCustomTextField(LocaleKeys
                    .ElectronicPreparation_InitializationTemplate_Executiontime
                .tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Thelesson.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Date.tr()),
            MyCustomTextField(LocaleKeys
                    .ElectronicPreparation_InitializationTemplate_Initializationcard
                .tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Thestrategy.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Target.tr()),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Period.tr()),
            MyCustomTextField(LocaleKeys
                    .ElectronicPreparation_InitializationTemplate_ExecutionMechanism
                .tr()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    onPressed: () {
                      // await context.setLocale(Locale('ar'));
                    },
                    textColor: Colors.white,
                    color: Color(0XFF036268),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text('Forcasting Strategy')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
