import 'package:flutter/material.dart';
import 'package:zakhir/Helper/constant.dart';
import 'package:zakhir/translations/locale_keys.g.dart';

class MyBoldHeading extends StatelessWidget {
  final String label;

  MyBoldHeading(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

class MyGreyDescription extends StatelessWidget {
  final String label;

  MyGreyDescription(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
        style: TextStyle(color: Constant.textSecondaryColor),
      ),
    );
  }
}

class MyCircularContainer extends StatelessWidget {
  final String label;
  final String description;

  MyCircularContainer(
    this.label,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constant.getWidth(context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Constant.backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyBoldHeading(label),
          ),
          MyGreyDescription(description)
        ],
      ),
    );
  }
}

class MyCircularContainerEmpty extends StatelessWidget {
  final Widget child;

  MyCircularContainerEmpty(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constant.getWidth(context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Constant.backgroundColor),
      child: child,
    );
  }
}

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.20,
      color: Constant.primaryColor,
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constant.primaryColor,
    );
  }
}

class MyDetailsList extends StatelessWidget {
  final String label;

  MyDetailsList(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            Icons.circle,
            size: 8,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text(
              label,
            ),
          )
        ],
      ),
    );
  }
}

class MyDetailsListArrow extends StatelessWidget {
  final String label;

  MyDetailsListArrow(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            Icons.circle,
            size: 8,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text(
              label,
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomTextField extends StatelessWidget {
  final String hint;

  MyCustomTextField(this.hint);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hint,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Focus(
            // debugLabel: 'اسم المستخدم',
            child: Builder(
              builder: (BuildContext context) {
                final FocusNode focusNode = Focus.of(context);
                final bool hasFocus = focusNode.hasFocus;
                return TextField(
                    // textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(6)),
                        fillColor: hasFocus
                            ? Colors.white
                            : Color.fromARGB(255, 247, 244, 244),
                        filled: true));
              },
            ),
          ),
        ],
      ),
    );
  }
}
