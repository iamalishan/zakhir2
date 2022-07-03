import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class InitializationTemplete extends StatefulWidget {
  const InitializationTemplete({Key? key}) : super(key: key);

  @override
  State<InitializationTemplete> createState() => _InitializationTempleteState();
}

class _InitializationTempleteState extends State<InitializationTemplete> {
  final subject = TextEditingController();
   final today = TextEditingController();
    final executionTime = TextEditingController();
     final theLesson = TextEditingController();
      final date = TextEditingController();
       final initilizationCard = TextEditingController();
        final theStrategy = TextEditingController();
         final target = TextEditingController();
          final period = TextEditingController();
           final executionMechanism = TextEditingController();
            final iwillanswer = TextEditingController();


  
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
              child: MyBoldHeading(LocaleKeys
                      .ElectronicPreparation_InitializationTemplate_InitializationTemplate
                  .tr()),
            ),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Subject.tr() , subject ),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Today.tr() , today),
            MyCustomTextField(LocaleKeys
                    .ElectronicPreparation_InitializationTemplate_Executiontime
                .tr(), executionTime),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Thelesson.tr() , theLesson),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Date.tr() , date),
            MyCustomTextField(LocaleKeys
                    .ElectronicPreparation_InitializationTemplate_Initializationcard
                .tr(), initilizationCard),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Thestrategy.tr(), theStrategy),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Target.tr(), target),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Period.tr() , period),
            MyCustomTextField(LocaleKeys
                    .ElectronicPreparation_InitializationTemplate_ExecutionMechanism
                .tr() , executionMechanism),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    onPressed: ()  {
                    FirebaseFirestore.instance.collection('userData/uid/cards').doc().set({
                      'cardType' : 'initialization' ,
                      'subject' : subject.value.text,
                      'today' : today.value.text,
                      'executionTime' : executionTime.value.text,
                      'theLesson' : theLesson.value.text,
                      'date' : date.value.text,
                      'initializationCard' : initilizationCard.value.text,
                      'theStrategy' : theStrategy.value.text,
                      'target' : target.value.text,
                      'period' : period.value.text,
                      'executionMechanism' : executionMechanism.value.text,
                      'iwillanswer' : iwillanswer.value.text,
                    }).whenComplete(() {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Card Added')));
                    });
                    },
                    textColor: Colors.white,
                    color: Color(0XFF036268),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(LocaleKeys
                            .ElectronicPreparation_InitializationTemplate_Initialization
                        .tr())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 247, 244, 244),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              LocaleKeys
                                      .ElectronicPreparation_InitializationTemplate_Fromtheteacherroles
                                  .tr(),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: Text(
                                LocaleKeys
                                        .ElectronicPreparation_InitializationTemplate_Motivationtolearn
                                    .tr(),
                                style: TextStyle(fontSize: 16)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              LocaleKeys
                                      .ElectronicPreparation_InitializationTemplate_Fromthestudentroles
                                  .tr(),
                              style: TextStyle(fontSize: 16)),
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                                LocaleKeys
                                        .ElectronicPreparation_InitializationTemplate_Followthestepsoflearningandimplementationoftherequired
                                    .tr(),
                                style: TextStyle(fontSize: 16)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                child: MyCustomTextField(LocaleKeys
                        .ElectronicPreparation_InitializationTemplate_Iwillanswerthequestionefficiently
                    .tr() , iwillanswer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
