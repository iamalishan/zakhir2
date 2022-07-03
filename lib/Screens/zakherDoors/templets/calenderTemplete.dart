import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../Helper/constant.dart';
class CalenderCards extends StatefulWidget {
  const CalenderCards({ Key? key }) : super(key: key);

  @override
  State<CalenderCards> createState() => _CalenderCardsState();
}

class _CalenderCardsState extends State<CalenderCards> {
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
            stream: FirebaseFirestore.instance.collection('userData/uid/cards').where('cardType' , isEqualTo: 'calender').snapshots(),
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
                        Navigator.pushNamed(context, '/CalenderTemplete');
          },
              child: MyCircularContainer('Add Card', 'To add new Cards Click here')),
          )
      ]),
    );
  }
}

class CalenderTemplete extends StatefulWidget {
  const CalenderTemplete({Key? key}) : super(key: key);

  @override
  State<CalenderTemplete> createState() => _CalenderTempleteState();
}

class _CalenderTempleteState extends State<CalenderTemplete> {
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
            final thePage = TextEditingController();
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
                .ElectronicPreparation_InitializationTemplate_Subject.tr() , subject),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Target.tr(), target),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Thelesson.tr(), theLesson),
            MyCustomTextField(LocaleKeys.Obectives_Thepage.tr(), thePage),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Date.tr(), date),
            MyCustomTextField(LocaleKeys
                .ElectronicPreparation_InitializationTemplate_Period.tr(), period),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    onPressed: () async {
                         FirebaseFirestore.instance.collection('userData/uid/cards').doc().set({
                      'cardType' : 'calender' ,
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
                      'iwillanswer' : '',
                    }).whenComplete(() {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Card Added')));
                    });
                    },
                    textColor: Colors.white,
                    color: Color(0XFF036268),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child:
                        Text(LocaleKeys.Calendarandmeasurement_Calendar.tr())),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12),
            //       color: Color.fromARGB(255, 231, 231, 231),
            //     ),
            //     child: MyCustomTextField(''),
            //   ),
            // ),
          ],
        ),
      ),
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


