import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Capacity extends StatefulWidget {
  const Capacity({Key? key}) : super(key: key);

  @override
  State<Capacity> createState() => _CapacityState();
}

class _CapacityState extends State<Capacity> {
  var learningDifficulties = [
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_capacity_readingcomprehension
          .tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.StudentPortal_zakherDoors_capacity_completesentences.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys.StudentPortal_zakherDoors_capacity_Correspondence.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name":
          LocaleKeys.StudentPortal_zakherDoors_capacity_contextualerror.tr(),
      "picture": "assets/images/electronic/1.jpg",
      "route": null,
    },
    {
      "name": LocaleKeys
          .StudentPortal_zakherDoors_capacity_anomaloussingularassociation.tr(),
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
                .StudentPortal_zakherDoors_capacity_CapacityTitile.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: learningDifficulties.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: learningDifficulties[index]['name'],
                    itemRoute: learningDifficulties[index]['route'],
                    itempricture: learningDifficulties[index]['picture'],
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

    return InkWell(
        onTap: () {
          itemRoute != null ? Navigator.pushNamed(context, itemRoute) : null;
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
        ));
  }
}
