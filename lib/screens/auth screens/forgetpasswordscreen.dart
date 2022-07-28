import 'package:flutter/material.dart';
import 'package:kunggy/screens/auth%20screens/otpverificationscreen.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100.withOpacity(0.2),
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                color: Colors.grey.shade100.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ListView(
              children: [
                SizedBox(height: height * 0.08),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                Text(
                  'Enter your email to receive a \n one time password (OTP)',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.03),
                Image.network(
                  "https://image.shutterstock.com/image-vector/lock-reload-icon-isolated-on-260nw-1593519460.jpg",
                  height: 200,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.17),
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "abc@gmail.com",
                        hintStyle: TextStyle(color: Colors.red),
                      ),
                    )),
                SizedBox(
                  height: height * 0.08,
                ),
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
                            Colors.red.shade400.withOpacity(0.8),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.blue.shade200,
                              offset: Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(25)),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpVerification()),
                        );
                      },
                      splashColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        "Send",
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
          )
        ],
      ),
    );
  }
}
