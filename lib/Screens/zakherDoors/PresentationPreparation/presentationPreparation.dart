import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PresentationPreparation extends StatefulWidget {
  const PresentationPreparation({Key? key}) : super(key: key);

  @override
  State<PresentationPreparation> createState() =>
      _PresentationPreparationState();
}

class _PresentationPreparationState extends State<PresentationPreparation> {
  var presentationPreparation = [
    {
      "name": LocaleKeys.zakherDoors_SavedOffers.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.zakherDoors_Setupanew.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.zakherDoors_TheExams_Practicaltest.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
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
                .zakherDoors_Presentationpreparationandpracticallesson
                .tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: presentationPreparation.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: presentationPreparation[index]['name'],
                    itemRoute: presentationPreparation[index]['route'],
                    itempricture: presentationPreparation[index]['picture'],
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
  final itemRoute;
  final itempricture;

  SingleGrid({
    this.itemname,
    this.itemRoute,
    this.itempricture,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Constant.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(itemname),
          ),

          // Expanded(
          //   child: Image.asset(
          //     itempricture,
          //   ),
          // ),
        ],
      ),
    );
  }
}
