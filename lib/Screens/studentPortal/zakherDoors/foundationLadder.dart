import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/Screens/studentPortal/zakherDoors/templete.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class FoundationLadder extends StatefulWidget {
  const FoundationLadder({Key? key}) : super(key: key);

  @override
  State<FoundationLadder> createState() => _FoundationLadderState();
}

class _FoundationLadderState extends State<FoundationLadder> {
  var menulist = [
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_FoundationLadder_Readingfoundationladder
          .tr(),
      "picture": "assets/images/zakherDoors/1.jpg",
      "2nd_name": 'Readingfoundationladder',
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_FoundationLadder_Ladderestablishingdictates
          .tr(),
      "picture": "assets/images/zakherDoors/2.jpg",
      "2nd_name": 'Ladderestablishingdictates',
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_FoundationLadder_LadderEstablishingRules
          .tr(),
      "picture": "assets/images/zakherDoors/3.jpg",
      "2nd_name": 'LadderEstablishingRules',
    },
    {
      "name": LocaleKeys
              .StudentPortal_zakherDoors_FoundationLadder_AccountEstablishmentScale_AccountEstablishmentScale
          .tr(),
      "picture": "assets/images/zakherDoors/4.jpg",
      "2nd_name": "/AccountEstablishment",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyBoldHeading(LocaleKeys
                    .StudentPortal_zakherDoors_FoundationLadder_FoundationLadder
                .tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: menulist.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: menulist[index]['name'],
                    item2ndname: menulist[index]['2nd_name'],
                    itempricture: menulist[index]['picture'],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class SingleGrid extends StatelessWidget {
  final itemname;
  final item2ndname;
  final itempricture;

  SingleGrid({
    this.itemname,
    this.item2ndname,
    this.itempricture,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
                                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Templete(cardType: item2ndname,))
  );
          // Navigator.pushNamed(context, item2ndname , arguments: 'alishan');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Constant.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(itempricture),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(itemname),
              ),

              // Expanded(
              //   child: Image.asset(
              //     itempricture,
              //   ),
              // ),
            ],
          ),
        ));
  }
}
