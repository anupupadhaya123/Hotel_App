import 'package:flutter/material.dart';
import 'dart:math' as math;

class HotelDetail extends StatefulWidget {
  @override
  _HotelDetailState createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.network(
            "https://resofrance.eu/wp-content/uploads/2018/09/hotel-luxe-mandarin-oriental-paris.jpg",
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.28,
            ),
            height: height * 0.79,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                    topRight: Radius.circular(55))),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        Text(
                          "Luxury Hotel",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "4.5 stars(356 reviews)",
                          style: TextStyle(fontSize: 13, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      "\$2500",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey.shade300,
                            ),
                            child: Icon(
                              Icons.car_rental_sharp,
                              size: 38,
                            ),
                            alignment: Alignment.center,
                          ),
                          Text(
                            "4",
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            "Parkings",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),

                      SizedBox(
                        width: 22,
                      ),

                      ///
                      ///
                      ///
                      ///
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey.shade300,
                            ),
                            child: Icon(
                              Icons.kitchen_sharp,
                              size: 38,
                            ),
                            alignment: Alignment.center,
                          ),
                          Text(
                            "2",
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            "Kitchens",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),

                      SizedBox(
                        width: 15,
                      ),

                      ///
                      ///
                      ///
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey.shade300,
                            ),
                            child: Icon(
                              Icons.bathtub_outlined,
                              size: 38,
                            ),
                            alignment: Alignment.center,
                          ),
                          Text(
                            "3",
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            "Bathrooms",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),

                      SizedBox(
                        width: 13,
                      ),

                      ///
                      ///
                      ///
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey.shade300,
                            ),
                            child: Icon(
                              Icons.pool_outlined,
                              size: 38,
                            ),
                            alignment: Alignment.center,
                          ),
                          Text(
                            "1",
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            "Swim Pools",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43, top: 20),
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43, top: 10, right: 15),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem....",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43, top: 5, right: 15),
                  child: Text(
                    "Read More",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43, top: 20, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Photos",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text(
                        "see all",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 15, right: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),

                      SizedBox(
                        width: 8,
                      ),

                      ///
                      ///
                      ///
                      ///

                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),

                      SizedBox(
                        width: 8,
                      ),

                      ///
                      ///
                      ///

                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),

                      SizedBox(
                        width: 8,
                      ),

                      ///
                      ///
                      ///

                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1563911302283-d2bc129e7570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43, top: 30),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.black)),
                          child: Transform.rotate(
                            angle: 45 * math.pi / 180,
                            child: Icon(
                              Icons.add,
                              size: 38,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Container(
                          width: 200,
                          height: height * 0.055,
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
                              borderRadius: BorderRadius.circular(15)),
                          child: RawMaterialButton(
                            onPressed: () {},
                            splashColor: Colors.white.withOpacity(0.2),
                            child: Text(
                              "Select Rooms",
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
