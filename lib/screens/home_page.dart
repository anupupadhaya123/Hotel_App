import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kunggy/screens/hotel_confirmation_code_screen.dart';
import 'package:kunggy/screens/hotel_home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  double fontsize1 = 16;
  double fontsize2 = 16;
  double fontsize3 = 16;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20, top: 50, right: 10),
        children: [
          ListTile(
            leading: Text(
              "Kunggy",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink.shade400),
            ),
            trailing: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1573640076354-ddcbf94b9b09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxNTU0NTB8fGVufDB8fHx8&w=1000&q=80")),
          ),
          SizedBox(
            height: 15,
          ),
          Text("Good morning",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
          SizedBox(
            height: 5,
          ),
          Text("Anup Sharma",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          SizedBox(
            height: 15,
          ),

          SizedBox(
            height: 5,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    fontsize1 = 20;
                    fontsize2 = 16;
                    fontsize3 = 16;
                  });
                },
                child: Text("STAYS",
                    style: TextStyle(
                        fontSize: fontsize1, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                width: 35,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    fontsize1 = 16;
                    fontsize2 = 20;
                    fontsize3 = 16;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HotelConfirmationCode()),
                  );
                },
                child: Text("CHECK IN",
                    style: TextStyle(
                        fontSize: fontsize2, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                width: 35,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    fontsize1 = 16;
                    fontsize2 = 16;
                    fontsize3 = 20;
                  });
                },
                child: Text("COUPONS",
                    style: TextStyle(
                        fontSize: fontsize3, fontWeight: FontWeight.w600)),
              )
            ],
          ),

          SizedBox(height: 20),
          Container(
              height: 50,
              margin: EdgeInsets.only(right: width * 0.05),
              child: TextField(
                  controller: searchController,
                  onTap: () {
                    _displayDialog(context);
                  },
                  decoration: InputDecoration(
                      hintText: "Where are you going?",
                      hintStyle: TextStyle(color: Colors.black38),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.black38,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(15),
                      )))),
          SizedBox(
            height: 25,
          ),

          Text("Popular now",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                    height: 200,
                    width: 280,
                    radius: 15,
                    name: "Farm Stay- New Delhi",
                    imageurl:
                        "https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                SizedBox(
                  width: 10,
                ),
                Aboutus(
                    height: 200,
                    width: 280,
                    radius: 15,
                    name: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1483648969698-5e7dcaa3444f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                SizedBox(
                  width: 10,
                ),
                Aboutus(
                    height: 200,
                    width: 280,
                    radius: 15,
                    name: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1621465558419-1deb2e51b530?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=858&q=80"),
                SizedBox(
                  width: 10,
                ),
                Aboutus(
                    height: 200,
                    width: 280,
                    radius: 15,
                    name: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1516556888824-7fb346bd396d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
              ],
            ),
          ),
          Divider(),

          ///
          ///
          ///
          SizedBox(
            height: 15,
          ),
          Text("Nearby",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                    height: 220,
                    width: 260,
                    radius: 15,
                    name: "Nature launge- New Delhi",
                    imageurl:
                        "https://images.unsplash.com/photo-1529551739587-e242c564f727?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80"),
                SizedBox(
                  width: 10,
                ),
                Aboutus(
                    height: 220,
                    width: 260,
                    radius: 15,
                    name: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                SizedBox(
                  width: 10,
                ),
                Aboutus(
                    height: 220,
                    width: 260,
                    radius: 15,
                    name: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1621465558419-1deb2e51b530?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=858&q=80"),
                SizedBox(
                  width: 10,
                ),
                Aboutus(
                    height: 220,
                    width: 260,
                    radius: 15,
                    name: "The Amazing",
                    imageurl:
                        "https://images.unsplash.com/photo-1516556888824-7fb346bd396d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

////
///
///
class Aboutus extends StatelessWidget {
  final imageurl;
  final name;
  final double height;
  final double width;
  final double radius;
  Aboutus(
      {this.imageurl,
      this.name,
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
            child: Align(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
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
      ],
    );
  }
}

_displayDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return HotelHomeScreen();
    },
  );
}
