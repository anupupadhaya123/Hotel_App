import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kunggy/screens/auth%20screens/loginScreen.dart';

import '../../utils/utils.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  bool passwordVisibility = false;
  bool cpasswordVisibility = false;

  void createAccount() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cpasswordController.text.trim();
    if (email == '' || password == '' || cPassword == '') {
      Utils.flushBarErrorMessage("Please fill all the details", context);
      log("Please fill all details");
    } else if (password != cPassword) {
      Utils.flushBarErrorMessage("Password do not match", context);

      log("Password do not match");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if (userCredential != null) {
          Navigator.pop(context);
        }
        Utils.flushBarErrorMessage("Account Created Successfully", context);

        log("User Created");
      } on FirebaseAuthException catch (ex) {
        if (ex.code.toString() == "weak-password") {
          Utils.flushBarErrorMessage("Password is too weak", context);
        } else if (ex.code.toString() == "invalid-email") {
          Utils.flushBarErrorMessage("email is invalid", context);
        }
        log(ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: height * 0.1),
                Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Sign up for a new kunggy account",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.04),

                //New password input form
                Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.13),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        alignLabelWithHint: true,
                        labelText: 'Email',
                        hintText: "abc@gmail.com",
                        hintStyle: TextStyle(color: Colors.red.shade300),
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    )),
                SizedBox(
                  height: height * 0.02,
                ),
                //
                //
                // password input form
                Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.13),
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
                        labelText: 'password',
                        focusColor: Colors.blue,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    )),

                SizedBox(
                  height: height * 0.02,
                ),
                //
                //
                // password input form
                Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.13),
                    child: TextFormField(
                      controller: cpasswordController,
                      obscureText: !cpasswordVisibility,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => cpasswordVisibility = !cpasswordVisibility,
                          ),
                          child: Icon(
                            cpasswordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 20,
                          ),
                        ),
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm password',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    )),

                SizedBox(
                  height: height * 0.05,
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
                        createAccount();
                      },
                      splashColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Colors.black45,
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "OR",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.black45)),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Center(
                  child: Text(
                    "Register with google and facebook",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade100,
                        ),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 38,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "&",
                      style: TextStyle(fontSize: 17, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          "https://png.pngtree.com/element_our/md/20180626/md_5b321c96e404e.jpg",
                          height: 60,
                          width: 60,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
