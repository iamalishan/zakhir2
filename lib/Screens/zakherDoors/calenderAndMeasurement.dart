import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/Helper/mywidgets.dart';
import 'package:zakhir/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CalenderAndMeasurement extends StatefulWidget {
  const CalenderAndMeasurement({Key? key}) : super(key: key);

  @override
  State<CalenderAndMeasurement> createState() => _CalenderAndMeasurementState();
}

class _CalenderAndMeasurementState extends State<CalenderAndMeasurement> {
  var calenderList = [
    {
      "name": LocaleKeys.Calendarandmeasurement_Calendartypes.tr(),
      "route": "/CalenderTypes",
    },
    {
      "name": LocaleKeys.Calendarandmeasurement_Calendarmethods.tr(),
      "route": "/CalenderMethods",
    },
    {
      "name": LocaleKeys.Calendarandmeasurement_LearningOutcomeMeasurement.tr(),
      "route": "/LearningOutcome",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 3),
            child: MyBoldHeading(
                LocaleKeys.Calendarandmeasurement_Calendarandmeasurement.tr()),
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: calenderList.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return SingleGrid(
                    itemname: calenderList[index]['name'],
                    itemRoute: calenderList[index]['route'],
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

  SingleGrid({
    this.itemname,
    this.itemRoute,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, itemRoute);
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
