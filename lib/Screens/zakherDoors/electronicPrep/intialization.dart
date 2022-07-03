import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
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
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  InitializationCards())
  );
                // Navigator.pushNamed(context, '/initilizationTemplete');
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
class InitializationCards extends StatefulWidget {
  const InitializationCards({ Key? key }) : super(key: key);

  @override
  State<InitializationCards> createState() => _InitializationCardsState();
}

class _InitializationCardsState extends State<InitializationCards> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
      final db = FirebaseFirestore.instance;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

        SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyBoldHeading("Cards"),
          ),
           StreamBuilder<QuerySnapshot<Map<String, dynamic>>?>(
            stream: FirebaseFirestore.instance.collection('userData/uid/cards').where('cardType' , isEqualTo: 'initialization').snapshots(),
            builder: (context, snapshot) {
               if(!snapshot.hasData){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                if(snapshot.hasData ){
                    return Expanded(
                      child: GridView.builder(
                        itemCount: snapshot.data?.docs.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisExtent: 100), itemBuilder: ( context , index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: InkWell(
                              onTap: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  CardDetailScreen( id: snapshot.data?.docs[index].id,))
  );},       child: Container(
                                width: width,
                                height: height,
                              decoration: BoxDecoration(
                                        color: Constant.backgroundColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                child :Center(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Card'),
                                    SizedBox( width: 3.0,),
                                    Text("${index+1}")
                                  ],
                                ))
                              ),
                            ),
                          ),
                        );
                    
                      }),
                    );
                  }
                  else{
                    return const Center(
                      child: Text("No Saved Cards"),
                    );
                  }
              
                
            },
           ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: InkWell(
                onTap: (){
                        Navigator.pushNamed(context, '/initilizationTemplete');
          },
              child: MyCircularContainer('Add Card', 'To add new Cards Click here')),
          )
      ]),
    );
  }
}

class CardDetailScreen extends StatefulWidget {
  String? id;
 
   CardDetailScreen({ Key? key , required this.id }) : super(key: key);


  State<CardDetailScreen> createState() => _CardDetailScreenState();
}

class _CardDetailScreenState extends State<CardDetailScreen> {
   @override
  void initState() {
    super.initState();
    getData().whenComplete(() {
      setState(() {
        loaded = true;
      });
    });

  }
  dynamic data;
  bool loaded =false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: loaded ? Column(children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: MyBoldHeading('Card Details'),
            ),
            
            MyCardContainer(LocaleKeys.Obectives_Subject.tr(), data['subject']),
            MyCardContainer(LocaleKeys.ElectronicPreparation_InitializationTemplate_Today.tr(), data['today']),
            MyCardContainer(LocaleKeys.ElectronicPreparation_InitializationTemplate_Executiontime.tr(), data['executionTime']),
            MyCardContainer(LocaleKeys.Obectives_Thelesson.tr(),data['theLesson']),
            MyCardContainer(LocaleKeys.Obectives_Date.tr(),data['date']),
            MyCardContainer(LocaleKeys.ElectronicPreparation_initialization_initializationCard.tr(),data['initializationCard']),
            MyCardContainer(LocaleKeys.ElectronicPreparation_InitializationTemplate_Thestrategy.tr(),data['theStrategy']),
            MyCardContainer(LocaleKeys.Obectives_Target.tr(), data['target']),
            MyCardContainer(LocaleKeys.Obectives_Period.tr(), data['executionMechanism']),
            MyCardContainer(LocaleKeys.ElectronicPreparation_InitializationTemplate_ExecutionMechanism.tr(),data['executionMechanism']),
            MyCardContainer(LocaleKeys.ElectronicPreparation_InitializationTemplate_Iwillanswerthequestionefficiently.tr(), data['iwillanswer']),
            
        
          ],) : Expanded(
            child: Container(
               height :MediaQuery.of(context).size.height,
              child: Center(child: CircularProgressIndicator())),
          ),
        ),
      ),
    );
  }
   Future<dynamic> getData() async {

    final DocumentReference document =   FirebaseFirestore.instance.collection("userData/uid/cards").doc(widget.id);

    await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
     setState(() {
       data =snapshot.data();
       print(snapshot.exists);
       print(snapshot.id);
       print(snapshot.data());
     });
    });
 }
}
