import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Screens/login.dart';
import 'package:zakhir/Screens/mainScreen.dart';
import 'package:zakhir/Screens/registration.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/accountEstablishmentScale.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/forms.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/foundationLadder.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/learnerPublications.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/letterCard.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/studentPortal.dart';
import 'package:zakhir/Screens/zakherDoors/CalenderAndMeasurement/calenderMethods.dart';
import 'package:zakhir/Screens/zakherDoors/CalenderAndMeasurement/calenderTypes.dart';
import 'package:zakhir/Screens/zakherDoors/CalenderAndMeasurement/learningOutcome.dart';
import 'package:zakhir/Screens/zakherDoors/CognitiveLearningStyles/CognitiveLearningStyles.dart';
import 'package:zakhir/Screens/zakherDoors/FormsAndForms/formAndForms.dart';
import 'package:zakhir/Screens/zakherDoors/LearningDifficulties/LearningDifficulties.dart';
import 'package:zakhir/Screens/zakherDoors/PresentationPreparation/presentationPreparation.dart';
import 'package:zakhir/Screens/zakherDoors/TheExams/theExams.dart';
import 'package:zakhir/Screens/zakherDoors/calenderAndMeasurement.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/Questions.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/QuestionsDirections.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/QuestionsScreen.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/initializationTemplete.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/learningStyleAndStyles.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/objectiveTemplete.dart';
import 'package:zakhir/Screens/zakherDoors/electronicPrep/strategies.dart';
import 'package:zakhir/Screens/zakherDoors/zakherDoors.dart';
import 'package:zakhir/translations/codegen_loader.g.dart';

import 'Screens/splashScreen.dart';
import 'Screens/studentPortal/zakherDoors/capacity.dart';
import 'Screens/zakherDoors/electronicPrep/coginitiveGoalsPsychomotor.dart';
import 'Screens/zakherDoors/electronicPrep/cognitiveGoals.dart';
import 'Screens/zakherDoors/electronicPrep/electronicPrep.dart';
import 'Screens/zakherDoors/electronicPrep/emotionalGoals.dart';
import 'Screens/zakherDoors/electronicPrep/goalsClassification.dart';
import 'Screens/zakherDoors/electronicPrep/intialization.dart';
import 'Screens/zakherDoors/electronicPrep/objectiveScreen.dart';
import 'Screens/zakherDoors/levelOfComprehension.dart';
import 'Screens/zakherDoors/templets/assignmentAndTask.dart';
import 'Screens/zakherDoors/templets/browsingStrategy.dart';
import 'Screens/zakherDoors/templets/calenderTemplete.dart';
import 'Screens/zakherDoors/templets/digitalBarcodeTemplete.dart';
import 'Screens/zakherDoors/templets/enrichmentTemplete.dart';
import 'Screens/zakherDoors/templets/theReviewer.dart';
import 'Screens/zakherDoors/templets/theWorksheetTemplete.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      assetLoader: CodegenLoader(),
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: Locale('en'),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
      '/splash': (context) => SplashScreen(),
      '/login': (context) => Login(
            title: 'Zakher',
          ),
      '/register': (context) => Registration(),
      '/MainScreen': (context) => MainScreen(),
      '/zakherDoors': (context) => ZakherDoors(),
      '/initilizationTemplete': (context) => InitializationTemplete(),
      '/ObjectivesScreen': (context) => ObjectivesScreen(),
      '/ReachingTheGoal': (context) => ReachingTheGoal(),
      '/objectiveTemplete': (context) => ObjectiveTemplete(),
      '/ElectronicPreparation': (context) => ElectroniPrep(),
      '/initilization': (context) => Intialization(),
      '/QuestionsDirestions': (context) => QuestionsDirections(),
      '/QuestionsScreen': (context) => QuestionsScreen(),
      '/Questions': (context) => Questions(),
      '/LearningStyle': (context) => LearningStyleandStyles(),
      '/Strategies': (context) => Strategies(),
      '/QuestionCard': (context) => QuestionCard(),
      '/Calender': (context) => CalenderAndMeasurement(),
      '/CalenderTypes': (context) => CalenderTypes(),
      '/CalenderMethods': (context) => CalenderMethods(),
      '/LearningOutcome': (context) => LearningOutcome(),
      '/Cognitive': (context) => CognitiveLearning(),
      '/CognitiveModel': (context) => CognitiveModel(),
      '/LearningDifficulties': (context) => LearningDifficulties(),
      '/TeachingMethods': (context) => TeachingMethods(),
      '/LearningStrategies': (context) => LearningStrategies(),
      '/LearningActivites': (context) => LearningActivites(),
      '/GeneralInstructions': (context) => GeneralInstructions(),
      '/WrittenTest': (context) => WrittenTest(),
      '/OralTest': (context) => OralTest(),
      '/PracticalTest': (context) => PracticalTest(),
      '/FormAndForms': (context) => FormsAndForms(),
      '/TheExams': (context) => TheExams(),
      '/AchievementFile': (context) => AchievementFile(),
      '/Publications': (context) => Publications(),
      '/Forms': (context) => Forms(),
      '/PresentationPreparation': (context) => PresentationPreparation(),
      '/StudentzakherDoors': (context) => StudentPortal(),
      '/FoundationLadder': (context) => FoundationLadder(),
      '/LetterCard': (context) => LetterCard(),
      '/StudentFroms': (context) => StudentForms(),
      '/Learner': (context) => LearnerPublications(),
      '/AccountEstablishment': (context) => AccountEstablishmentScale(),
      '/LevelOfComprehension': (context) => LevelOfComprehension(),
      '/Capacity': (context) => Capacity(),
      '/GoalsClassification': (context) => GoalsClassification(),
      '/CognitiveGoals': (context) => CognitiveGoals(),
      '/CognitiveGoalsPsychomotor': (context) => CognitiveGoalsPsychomotor(),
      '/EmotionalGoals': (context) => EmotionalGoals(),
      '/EnrichmentTemplete': (context) => EnrichmentTemplete(),
      '/BrowsingTemplete': (context) => BrowsingTemplete(),
      '/DigitalBarcodeTemplete': (context) => DigitalBarcodeTemplete(),
      '/CalenderTemplete': (context) => CalenderTemplete(),
      '/AssignmentAndTask': (context) => AssignmentAndTask(),
      '/TheReviewerTemplete': (context) => TheReviewerTemplete(),
      '/TheWorksheetTemplete': (context) => TheWorksheetTemplete()
    };
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: Constant.appTitle,
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: routes,
    );
  }
}
