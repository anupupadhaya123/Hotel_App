import 'package:flutter/material.dart';
import 'package:kunggy/screens/auth%20screens/resetpasswordscreen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
              children: [
                SizedBox(height: height * 0.08),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Enter the OTP just sent to your email/phone number",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                Image.network(
                  "https://st2.depositphotos.com/19320080/41973/v/600/depositphotos_419739276-stock-illustration-mockup-phone-encrypted-password-authentication.jpg",
                  height: 170,
                ),
                //
                //
                //New password input form

                SizedBox(
                  height: height * 0.04,
                ),
                OTPTextField(
                  length: 4,
                  // length: 5,
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
                      "Didn't receive a OTP?",
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
                              builder: (context) => ResetPassword()),
                        );
                      },
                      splashColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        "Verify",
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
