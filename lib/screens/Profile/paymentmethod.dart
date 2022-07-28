import 'package:flutter/material.dart';
import 'package:kunggy/screens/Profile/addpaymentmethod.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
              "Set up a payment method",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Use you payment methods to make purchase on kunggy",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 230,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddpaymentMethod()),
                  );
                },
                splashColor: Colors.white.withOpacity(0.2),
                child: Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.white, fontSize: 17.0, letterSpacing: 1.7),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
