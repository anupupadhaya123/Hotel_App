import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'foodmenuscreen.dart';

class HotelProfile extends StatefulWidget {
  @override
  _HotelProfileState createState() => _HotelProfileState();
}

class _HotelProfileState extends State<HotelProfile> {
  var _rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  "THE HOTEL",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w400),
                ),
                RatingBar(
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    half: Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    empty: Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                  ),
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 17,
                  onRatingUpdate: (rating) {
                    _rating = rating;
                  },
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "kunggy",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10, left: 20, right: 5),
        children: [
          Text(
            "Welcome to the Hotel",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                  height: 200,
                  width: 290,
                  radius: 8,
                  aboutusdetail: "About us",
                  imageurl:
                      "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 200,
                  width: 290,
                  radius: 8,
                  aboutusdetail: "About us",
                  imageurl:
                      "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 200,
                  width: 290,
                  radius: 8,
                  aboutusdetail: "About us",
                  imageurl:
                      "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 200,
                  width: 290,
                  radius: 8,
                  aboutusdetail: "abouts us",
                  imageurl:
                      "https://images.unsplash.com/photo-1563911302283-d2bc129e7570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Features(
                      icon: Icons.wifi,
                      name: "Wifi \nPassword",
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodMenuScreen()),
                      );
                    },
                    child: Features(
                      icon: Icons.room_service,
                      name: "Room \nService",
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Features(
                      icon: Icons.call,
                      name: "Call \nReception",
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Features(
                      icon: Icons.cleaning_services,
                      name: "House \nkeeping",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Covid-19 Update",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Aboutus(
            aboutusdetail: "Covid-19 information",
            height: 200,
            width: double.infinity,
            imageurl:
                "https://media.istockphoto.com/photos/coronavirus-new-strain-wide-dark-background-picture-id1308624310?s=612x612",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Enjoy Your Stay",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                  height: 190,
                  width: 220,
                  radius: 8,
                  aboutusdetail: "Wellness",
                  imageurl:
                      "https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=821&q=80",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 190,
                  width: 220,
                  radius: 8,
                  aboutusdetail: "Wellness",
                  imageurl:
                      "https://images.unsplash.com/photo-1590074072786-a66914d668f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 190,
                  width: 220,
                  radius: 8,
                  aboutusdetail: "Wellness",
                  imageurl:
                      "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 190,
                  width: 220,
                  radius: 8,
                  aboutusdetail: "Wellness",
                  imageurl:
                      "https://images.unsplash.com/photo-1522798514-97ceb8c4f1c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
                )
              ],
            ),
          ),

          ///
          ///
          SizedBox(
            height: 20,
          ),
          Text(
            "Restaurants",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                  height: 190,
                  width: 250,
                  radius: 8,
                  aboutusdetail: "The Restaurant",
                  imageurl:
                      "https://media.istockphoto.com/photos/table-top-view-of-spicy-food-picture-id1316145932?s=612x612",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 190,
                  width: 250,
                  radius: 8,
                  aboutusdetail: "The Restaurant",
                  imageurl:
                      "https://media.istockphoto.com/photos/interior-of-a-modern-cozy-french-restaurant-picture-id1314951233?s=612x612",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 190,
                  width: 250,
                  radius: 8,
                  aboutusdetail: "The Restaurant",
                  imageurl:
                      "https://media.istockphoto.com/photos/empty-restaurant-interior-picture-id1290237592?s=612x612",
                ),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                  height: 190,
                  width: 250,
                  radius: 8,
                  aboutusdetail: "The Restaurant",
                  imageurl:
                      "https://images.unsplash.com/photo-1497644083578-611b798c60f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                )
              ],
            ),
          ),

          ///
          ///
          SizedBox(
            height: 20,
          ),
          Text(
            "Suggestions",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                    height: 190,
                    width: 240,
                    radius: 8,
                    aboutusdetail: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                    height: 190,
                    width: 240,
                    radius: 8,
                    aboutusdetail: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1483648969698-5e7dcaa3444f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                    height: 190,
                    width: 240,
                    radius: 8,
                    aboutusdetail: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1621465558419-1deb2e51b530?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=858&q=80"),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                    height: 190,
                    width: 240,
                    radius: 8,
                    aboutusdetail: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1516556888824-7fb346bd396d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: Text(""),
          )
        ],
      ),
    );
  }
}

class Aboutus extends StatelessWidget {
  final imageurl;
  final aboutusdetail;
  final double height;
  final double width;
  final double radius;
  Aboutus(
      {this.imageurl,
      this.aboutusdetail,
      this.height = 10,
      this.width = 10,
      this.radius = 10});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              image: new DecorationImage(
                image: NetworkImage(imageurl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          aboutusdetail,
        ),
      ],
    );
  }
}

class Features extends StatelessWidget {
  final icon;
  final name;
  Features({this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black87,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          alignment: Alignment.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black87),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
