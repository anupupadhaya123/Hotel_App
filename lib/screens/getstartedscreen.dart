import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'auth screens/loginScreen.dart';
import 'hotel_app_theme.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: HotelAppTheme.buildLightTheme(),
      child: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    imageUrl:
                        'https://images.unsplash.com/photo-1506059612708-99d6c258160e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),

                // child: Image.network(
                //   'https://images.unsplash.com/photo-1506059612708-99d6c258160e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
                //   height: MediaQuery.of(context).size.height,
                //   width: double.infinity,
                //   fit: BoxFit.cover,
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 25, bottom: 25),
                child: Icon(
                  Icons.hotel_outlined,
                  color: Colors.white,
                  size: 70,
                ),
              ),
              // CircleAvatar(
              //   radius: 70,
              //   backgroundImage: NetworkImage(
              //       "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/grand-hotel-logo-design-template-50c7255579b1e9df6d8bae41f78889c1_screen.jpg?ts=1611148225"),
              // ),

              Positioned(
                top: 110,
                left: 25,
                child: Text(
                  'Hotels & Resorts',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0),
                ),
              ),
              Positioned(
                top: 160,
                left: 25,
                child: Text(
                  'Everywhere In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0),
                ),
              ),
              Positioned(
                top: 210,
                left: 25,
                child: Text(
                  'The World',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0),
                ),
              ),

              ///button
              Positioned(
                bottom: 60,
                right: 100,
                left: 100,
                child: SizedBox(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: <Color>[
                            Colors.red.shade400.withOpacity(0.7),
                            Colors.red.shade400.withOpacity(0.9),
                            Colors.red.shade400.withOpacity(0.9),
                            Colors.red.shade800.withOpacity(0.8),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      splashColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                            letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
