import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kunggy/screens/Profile/addphonenumber.dart';
import 'package:kunggy/screens/Profile/emailchange.dart';
import 'package:kunggy/screens/calendar_popup_view.dart';

class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({Key? key}) : super(key: key);

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController gender = TextEditingController();
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));
  void showDemoDialog({BuildContext? context}) {
    showDialog<dynamic>(
      context: context!,
      builder: (BuildContext context) => CalendarPopupView(
        barrierDismissible: true,
        minimumDate: DateTime.now(),
        //  maximumDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 10),
        initialEndDate: endDate,
        initialStartDate: startDate,
        onApplyClick: (DateTime startData, DateTime endData) {
          setState(() {
            startDate = startData;
            endDate = endData;
          });
        },
        onCancelClick: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Personal Info",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30, left: 20),
        children: [
          Form(
              controller: firstname,
              labeltext: "First Name",
              hinttext: "Shankar"),
          SizedBox(
            height: 20,
          ),
          Form(
              controller: lastname,
              labeltext: "Last Name",
              hinttext: "Bhattarai"),
          SizedBox(
            height: 20,
          ),
          Form(controller: gender, labeltext: "Gender", hinttext: "Male"),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 50,
              margin: EdgeInsets.only(right: width * 0.05),
              child: TextField(
                  controller: dateofbirth,
                  onTap: () {},
                  decoration: InputDecoration(
                      labelText: "Date of Birth",
                      hintText: "2053/12/02",
                      labelStyle: TextStyle(fontSize: 17),
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(15),
                      )))),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmailChange()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "shankarbhattarai913@gmail.com",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPhoneNumber()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone number",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Provide phone number",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 14, decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Government ID",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Not Provided",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 14, decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emergency contact",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 14, decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: <Color>[
                      Colors.pink.shade800.withOpacity(0.8),
                      Colors.red.shade600.withOpacity(0.8),
                      Colors.red.shade400.withOpacity(0.8),
                      Colors.red.shade400.withOpacity(0.8),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.blue.shade200,
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(13)),
              child: RawMaterialButton(
                onPressed: () {},
                splashColor: Colors.white.withOpacity(0.2),
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.white, fontSize: 17.0, letterSpacing: 1.7),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class Form extends StatefulWidget {
  final controller;
  final String labeltext;
  final String hinttext;
  Form(
      {required this.controller,
      required this.labeltext,
      required this.hinttext});
  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: 50,
        margin: EdgeInsets.only(right: width * 0.05),
        child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
                labelText: widget.labeltext,
                hintText: widget.hinttext,
                labelStyle: TextStyle(fontSize: 17),
                hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(13),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(15),
                ))));
  }
}
