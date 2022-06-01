import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'Chat.dart';

class Questions extends StatefulWidget {
  final index;
  const Questions({Key? key, this.index}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: widget.index,
      length: 5,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyBoldHeading(LocaleKeys
                  .ElectronicPreparation_QuestionsScreen_Questions.tr()),
            ),
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
                              .ElectronicPreparation_QuestionsScreen_Organizationalprofessionallevel
                          .tr()),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsScreen_Deductiveexplanatorylevel
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsScreen_Appliedlevel
                        .tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Profiling.tr(),
                  ),
                  Tab(
                    text: LocaleKeys
                            .ElectronicPreparation_QuestionsScreen_Criticalthinkingstrategies
                        .tr(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Organizationalprofessionallevel(),
                Deductiveexplanatorylevel(),
                Appliedlevel(),
                Profiling(),
                Criticalthinkingstrategies(),
              ],
            )),
          ],
        ),
      )),
    );
  }
}

class Organizationalprofessionallevel extends StatelessWidget {
  const Organizationalprofessionallevel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatisthelexicalmeaningofthefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Recalltheideacontainedintheparagraph
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Listthepersonalitytraitsmentionedinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Iparaphrasethemeaninginmyownway
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Explainthesequenceofideasinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Showthesimilaritiesbetween
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Findthedifferencesbetween
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Drawamapthatshowsthesequenceofeventsandsituations
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Drawlinestoshowthesequenceofideas
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Drawaconceptmap
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Completethefollowingblanks
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Chooseanideaandexplainit
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Analyzethefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Mentionthesynonymsofthefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Definethecommonverbal
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Mentiontheoppositeofthefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Thenumberofcharactersinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Mentiontheplacesmentionedinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Aquestionpreparedbytheteacher
                    .tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Deductiveexplanatorylevel extends StatelessWidget {
  const Deductiveexplanatorylevel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Inferthemainideasinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Classifythefollowinginformation
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Explainthecauseandeffectrelationshipbetween
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Whathappensif
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Drawamapthatshowsthesequenceofeventsandsituations
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatistheresultof
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Whatdowedoif
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatwouldyoudoif
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whathappensifwereversethecharactertraits
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Analyzethefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whathappensifthesituationhappenedinreverse
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whathappensifeventsgoinreverse
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Drawaconceptmapthatshowstherelationshipbetweenmainandsubsidiaryideas
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Theconsequencesoftheeventswillbeproducedbasedonthedata
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_DrawwhatIlearnedfromthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatistherelationshipbetweenwhatyou
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Determinetheoverallrelationshipbetweenthefollowingthingsinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Howeventsandideasarerelatedwithinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Howdidyoufindthecorrelationbetweenthepartsofthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Explaintheauthorstyle
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Elicittheprevailingemotioninthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Irelatetheideaofthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Connecttheeventsinthetextlogically
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Connecttheeventsinthetextchronologically
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Aquestionpreparedbytheteacher
                    .tr(),
              ),
              MyDivider(),
            ],
          ),
        ),
      ),
    );
  }
}

class Profiling extends StatelessWidget {
  const Profiling({
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
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsScreen_ProfilingandVocabulary
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsScreen_Wordpatterns
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsScreen_Categoryandmeaning
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys.ElectronicPreparation_QuestionsScreen_Similarmeanings
                  .tr(),
            ),
            MyDivider(),
            MyDetailsList(
              LocaleKeys
                      .ElectronicPreparation_QuestionsScreen_Patternsofsoundsandphonemes
                  .tr(),
            ),
            MyDivider(),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilingForms()),
                );
              },
              title: MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Modelsforprofiling
                    .tr(),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

class Criticalthinkingstrategies extends StatelessWidget {
  const Criticalthinkingstrategies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Openendedquestions
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Deepquestions
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Surveystrategy
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Conclusion
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Induction.tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys.ElectronicPreparation_QuestionsScreen_Discrimination
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Compareandcontrast
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Determinecauseandeffect
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Definethepriorities
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Checkingforconsistencyinproofs
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_GettoknowthepointsofviewArgumentAnalysis
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Criticalthinkingcardswithinstrategies
                    .tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Appliedlevel extends StatelessWidget {
  const Appliedlevel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Distinguishbetweenwhatisrealandwhatisfiction
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Classifythefollowingstatementsintermsoffactandopinion
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Ijudgeideasintermsofhonesty
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Howreceptiveareyoutotheideaofthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Doyouhaveadesiretoapplywhatisstatedinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_simulatewhatwaspresentedinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Italkabouttheideasofthetextinabroaderview
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Howwouldyouactifyouwerethischaracter
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatareyourreasonsforacceptingtheposition
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatareyourreasonsforacceptingtheposition
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ExplainmypointofviewonthematterAreyouinfavororagainsttheidea
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Explainthereasonformyoppositiontotheidea
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ShowhowmuchIsupportsomeoneelsespointofviewonthesubjectAndwhy
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Completethediscussiononthefollowingsituationfrommypointofview
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Writeanotherendingtothestorybasedonthesequenceofevents
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_IwilldeleteaparagraphofthetextYouarerequiredtoompletethedeletedpart
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Issuedageneraljudgmentonthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_IselecttheelementsthatIthinkarerelevanttothetopic
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_IselecttheelementsthatIthinkarenotrelevanttothetopic
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Identifyinconsistenciesinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_distinguishbetweenreasonableandunreasonable
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Recognizegraphicimagesinthetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Findthesymbolicmeaningsofthefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Putanalternativetitletothetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatideascanbeaddedtothetext
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Iofferotherinnovativesolutionstosolvetheproblem
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Thetexthasbeenwellreformulated
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_predicttheendofthetextbasedontheintroduction
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatdoyouthinkaboutthesituationwithjustification
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatdoyouthinkofthelinguisticformulationoftheparagraphwithjustification
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatdoyouthinkofthelinguisticformulationofthesentencewithjustification
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Whatdoyouthinkofthelinguisticformulationofthevocabularywithjustificationforit
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_Aquestionpreparedbytheteacher
                    .tr(),
              ),
              MyDivider(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilingForms extends StatelessWidget {
  const ProfilingForms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyBoldHeading(LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Forms
                    .tr()),
              ),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Understandtherelationshipbetweenthefollowingintermsofsimilarities
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Understandtherelationshipbetweenthefollowingintermsofdifference
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Iunderstandtherelationshipbetweenthefollowing
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Selectthepatternofthefollowingwords
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Selectthestyleofthefollowingsounds
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Classifythefollowingwordsaccordingtothefollowing
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_SelectCategoriesStyle
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Selectthestyleofthefollowingshapes
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Selectthepatternofthefollowingnumbers
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Explainthepatternofmeaningsintermsofsimilarity
                    .tr(),
              ),
              MyDivider(),
              MyDetailsList(
                LocaleKeys
                        .ElectronicPreparation_QuestionsScreen_ProfilingForms_Explainthepatternofmeaningsintermsofantonyms
                    .tr(),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
