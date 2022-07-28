import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kunggy/screens/Profile/editpersonalinfo.dart';
import 'package:kunggy/screens/Profile/notifications.dart';
import 'package:kunggy/screens/Profile/paymentmethod.dart';
import 'package:kunggy/screens/Profile/travelforwork.dart';
import 'package:kunggy/screens/auth%20screens/loginScreen.dart';

class UsreProfileScreen extends StatefulWidget {
  const UsreProfileScreen({Key? key}) : super(key: key);

  @override
  State<UsreProfileScreen> createState() => _UsreProfileScreenState();
}

class _UsreProfileScreenState extends State<UsreProfileScreen> {
  void logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 30, right: 20, top: 50),
        children: [
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shankar Bhattarai",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Show Profile",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            trailing: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1573640076354-ddcbf94b9b09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxNTU0NTB8fGVufDB8fHx8&w=1000&q=80",
              ),
            ),
          ),
          Divider(
            thickness: 3,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Account Settings",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditPersonalInfo()),
              );
            },
            child: ListOfSettings(
                name: "Personal Information", icon: Icons.person_outline_sharp),
          ),
          GestureDetector(
              onTap: () {},
              child: ListOfSettings(
                name: "Rewards and Wallets",
                icon: Icons.wallet_travel_sharp,
              )),
          GestureDetector(
              onTap: () {},
              child: ListOfSettings(
                  name: "Gift Cards", icon: Icons.card_giftcard)),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentMethod()),
                );
              },
              child: ListOfSettings(
                  name: "Payments methods", icon: Icons.payment)),
          GestureDetector(
              onTap: () {},
              child: ListOfSettings(
                name: "Genius loyalty programme",
                icon: Icons.g_mobiledata_sharp,
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TravelForWork()),
                );
              },
              child: ListOfSettings(
                  name: "Travel for work", icon: Icons.card_travel)),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              child: ListOfSettings(
                  name: "Notifications", icon: Icons.notifications)),
          GestureDetector(
              onTap: () {},
              child:
                  ListOfSettings(name: "Reviews", icon: Icons.reviews_sharp)),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Settings and Legal",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          GestureDetector(
            onTap: () {},
            child: ListOfSettings(name: "Settings", icon: Icons.settings),
          ),
          GestureDetector(
            onTap: () {},
            child: ListOfSettings(
                name: "Give app feedback", icon: Icons.feedback_outlined),
          ),
          GestureDetector(
            onTap: () {},
            child: ListOfSettings(name: "Legal", icon: Icons.horizontal_split),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          InkWell(
            onTap: () {
              logout();
            },
            child: Text(
              "Log Out",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                  decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
        ],
      ),
    );
  }
}

class ListOfSettings extends StatelessWidget {
  final name;
  final icon;
  ListOfSettings({this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            size: 23,
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 17,
            color: Colors.black87,
          ),
        ),
        Divider(
          thickness: 2,
          height: 0,
        )
      ],
    );
  }
}
