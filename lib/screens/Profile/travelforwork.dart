import 'package:flutter/material.dart';

class TravelForWork extends StatefulWidget {
  const TravelForWork({Key? key}) : super(key: key);

  @override
  State<TravelForWork> createState() => _TravelForWorkState();
}

class _TravelForWorkState extends State<TravelForWork> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel for work",
          style: TextStyle(color: Colors.black),
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
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 30, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Try Kunggy for work",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Add your work email to unlock extra perks for business trips",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                child: TextField(
                    controller: email,
                    onTap: () {},
                    decoration: InputDecoration(
                        labelText: "Work email",
                        hintText: "abc@gmail.com",
                        labelStyle: TextStyle(fontSize: 17),
                        hintStyle:
                            TextStyle(color: Colors.black38, fontSize: 15),
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
              height: 50,
            ),
            Center(
              child: Container(
                width: 390,
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
                    "Add work email",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        letterSpacing: 1.7),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
