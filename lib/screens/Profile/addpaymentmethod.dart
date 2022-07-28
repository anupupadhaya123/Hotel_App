import 'package:flutter/material.dart';

class AddpaymentMethod extends StatefulWidget {
  const AddpaymentMethod({Key? key}) : super(key: key);

  @override
  State<AddpaymentMethod> createState() => _AddpaymentMethodState();
}

class _AddpaymentMethodState extends State<AddpaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        padding: EdgeInsets.only(top: 20, left: 30, right: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pay with",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Payment currency: NPR",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 35,
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 27,
              ),
              title: Text(
                "credit or debit card",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
