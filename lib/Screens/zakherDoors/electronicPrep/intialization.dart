import 'package:flutter/material.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';

class Intialization extends StatefulWidget {
  const Intialization({Key? key}) : super(key: key);

  @override
  State<Intialization> createState() => _IntializationState();
}

class _IntializationState extends State<Intialization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 40, 20, 20),
              child: MyBoldHeading(LocaleKeys
                  .ElectronicPreparation_initialization_Initialization.tr()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyCircularContainer(
                  LocaleKeys.ElectronicPreparation_initialization_Guiding.tr(),
                  LocaleKeys
                          .ElectronicPreparation_initialization_Activitiesbywhichyouwillachievetheobjectives
                      .tr()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyCircularContainer(
                  LocaleKeys.ElectronicPreparation_initialization_Transition
                      .tr(),
                  LocaleKeys
                          .ElectronicPreparation_initialization_Previousexperiencesrelatedtothenewlesson
                      .tr()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyCircularContainer(
                  LocaleKeys.ElectronicPreparation_initialization_Calendar.tr(),
                  LocaleKeys
                          .ElectronicPreparation_initialization_Questionstoevaluatewhathasbeenlearnedfrompreviouslessons
                      .tr()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyCircularContainer(
                  LocaleKeys.ElectronicPreparation_initialization_Motivational
                      .tr(),
                  LocaleKeys
                          .ElectronicPreparation_initialization_Aboutthenewlesson
                      .tr()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyCircularContainerEmpty(Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyBoldHeading(LocaleKeys
                            .ElectronicPreparation_initialization_Initializationmethods
                        .tr()),
                  ),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription1
                      .tr()),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription2
                      .tr()),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription3
                      .tr()),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription4
                      .tr()),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription5
                      .tr()),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription6
                      .tr()),
                  MyGreyDescription(LocaleKeys
                          .ElectronicPreparation_initialization_InitializationmethodsDescription7
                      .tr()),
                ],
              )),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: MyCircularContainer('Initialization methods ',
            //       "1- Ask the motivational questions\n2- Tell the story\n3- Link to reality and current events\n4- Investigative or exploratory method\n5- Show an educational tool \n6- Presenting Quranic verses and hadith\n7- The learner's practice of an activity"),
            // ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/initilizationTemplete');
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyCircularContainer(
                    LocaleKeys
                            .ElectronicPreparation_initialization_initializationCard
                        .tr(),
                    ''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
