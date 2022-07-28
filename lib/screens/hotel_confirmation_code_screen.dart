import 'package:flutter/material.dart';
import 'package:kunggy/screens/auth%20screens/resetpasswordscreen.dart';
import 'package:kunggy/screens/hotel_profile.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class HotelConfirmationCode extends StatefulWidget {
  @override
  _HotelConfirmationCodeState createState() => _HotelConfirmationCodeState();
}

class _HotelConfirmationCodeState extends State<HotelConfirmationCode> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(right: 25, left: 20),
              children: [
                SizedBox(height: height * 0.08),
                Text(
                  'Hotel Stay Confirmation',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Please Enter Hotel Check In code Provided by Hotel to complete the Checks In",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.01),
                Image.network(
                  "https://as2.ftcdn.net/v2/jpg/03/49/38/79/1000_F_349387923_Z27oNo5sTSY9ysFBxFGUvzxlpOvxDv8c.jpg",
                  height: 150,
                  width: double.infinity,
                ),

                //
                //
                //New password input form

                SizedBox(
                  height: height * 0.04,
                ),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  fieldWidth: 50,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldStyle: FieldStyle.box,
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(height: height * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive the confirmation code?",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Resend",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                //
                //
                //Button
                Center(
                  child: Container(
                    width: 260,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: <Color>[
                            Colors.pink.shade800.withOpacity(0.8),
                            Colors.red.shade600.withOpacity(0.8),
                            Colors.red.shade400.withOpacity(0.8),
                            Colors.red.shade400.withOpacity(0.8)
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.blue.shade200,
                              offset: Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(45)),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HotelProfile()),
                        );
                      },
                      splashColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
