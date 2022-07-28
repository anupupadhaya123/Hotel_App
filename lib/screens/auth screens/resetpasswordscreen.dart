import 'package:flutter/material.dart';
import 'package:kunggy/components/buttomnavbar.dart';
import 'package:kunggy/screens/home_page.dart';
import 'package:kunggy/screens/home_screen.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  bool passwordVisibility = false;
  bool confirmpasswordVisibility = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: height * 0.08),
                Text(
                  'Reset Password',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Enter the new password and let's \n being extra safe (OTP)",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.01),
                Image.network(
                  "https://t3.ftcdn.net/jpg/04/80/91/36/360_F_480913610_iYzv8o8Y3pnMESNY6Qock6ECNdY7dcVm.jpg",
                  height: 200,
                ), //
                //
                //New password input form
                Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 20,
                          ),
                        ),
                        border: UnderlineInputBorder(),
                        labelText: 'New password',
                        focusColor: Colors.blue,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    )),
                SizedBox(
                  height: height * 0.02,
                ),
                //
                //
                //confirm password input form
                Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.20),
                    child: TextFormField(
                      controller: confirmpasswordController,
                      obscureText: !confirmpasswordVisibility,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => confirmpasswordVisibility =
                                !confirmpasswordVisibility,
                          ),
                          child: Icon(
                            confirmpasswordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 20,
                          ),
                        ),
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm password',
                        focusColor: Colors.blue,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    )),
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
                              builder: (context) => Bottomnavigate()),
                        );
                      },
                      splashColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        "Done",
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
