import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class LearningStyleandStyles extends StatefulWidget {
  const LearningStyleandStyles({Key? key}) : super(key: key);

  @override
  _LearningStyleandStylesState createState() => _LearningStyleandStylesState();
}

class _LearningStyleandStylesState extends State<LearningStyleandStyles> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Constant.backgroundColor,
              ),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
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
                  Tab(
                      text: LocaleKeys
                              .ElectronicPreparation_LearnigStyleAndStylesScreen_Verbal
                          .tr()),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Mathematicallogic
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Visualspatial
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Somatokinetic
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Rhythmic
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Social
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Selfreflective
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_LearnigStyleAndStylesScreen_Naturaleco
                        .tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Verbal(),
                MathematicalLogic(),
                VisualSpatial(),
                Somatokinetic(),
                Rhythmic(),
                Social(),
                SelfRelective(),
                NaturalEco()
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Verbal extends StatelessWidget {
  const Verbal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_LearnigStyleAndStylesScreen_Read
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Iwrite
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Idiscuss
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Ilisten
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsDiresctionsScreen_How
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class MathematicalLogic extends StatelessWidget {
  const MathematicalLogic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Imeasure
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Iamexperimenting
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Somatokinetic extends StatelessWidget {
  const Somatokinetic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(LocaleKeys
                    .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                .tr()),
            MyDetailsList(LocaleKeys
                .ElectronicPreparation_LearnigStyleAndStylesScreen_Ride.tr()),
            MyDetailsList(LocaleKeys
                .ElectronicPreparation_LearnigStyleAndStylesScreen_Imove.tr()),
            MyDetailsList(LocaleKeys
                .ElectronicPreparation_LearnigStyleAndStylesScreen_Touch.tr()),
          ],
        ),
      ),
    );
  }
}

class NaturalEco extends StatelessWidget {
  const NaturalEco({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(LocaleKeys
                    .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                .tr()),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_LivingTheLife
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_IFollowNaturalPhenomena
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class SelfRelective extends StatelessWidget {
  const SelfRelective({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(LocaleKeys
                    .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                .tr()),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Selfinsight
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(LocaleKeys
                    .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                .tr()),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Icooperatewith
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_interactwith
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class Rhythmic extends StatelessWidget {
  const Rhythmic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Ilisten
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}

class VisualSpatial extends StatelessWidget {
  const VisualSpatial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MyBoldHeading(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Favoriteactivities
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_LearnigStyleAndStylesScreen_Draw
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Iimagine
                  .tr(),
            ),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_LearnigStyleAndStylesScreen_Makeamindmap
                  .tr(),
            ),
          ],
        ),
      ),
    );
  }
}
