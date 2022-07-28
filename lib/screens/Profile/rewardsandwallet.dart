import 'package:flutter/material.dart';

class Rewardsandwallet extends StatefulWidget {
  const Rewardsandwallet({Key? key}) : super(key: key);

  @override
  State<Rewardsandwallet> createState() => _RewardsandwalletState();
}

class _RewardsandwalletState extends State<Rewardsandwallet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Rewards and Wallet',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              backgroundColor: Colors.white,
              bottom: TabBar(
                tabs: [
                  Tab(
                      child: Text('Rewards',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))),
                  Tab(
                      child: Text('Wallets',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            ListView(
              padding: EdgeInsets.only(top: 20, left: 20, right: 25),
              children: [
                Text("Your Cards",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Rewards labelled 'Card payment' will be paid to this card: ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                ListTile(
                  leading: Icon(
                    Icons.card_giftcard,
                    size: 23,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Add or select a card",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                    color: Colors.black87,
                  ),
                ),
                Divider(
                  thickness: 4,
                  height: 6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Your rewards So far",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Start earning to track your rewards stats from here",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 4,
                  height: 6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rewards activity(0)",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_activity,
                      size: 55,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "When you become eligible for a reward, you'll see it here")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 4,
                  height: 6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Got Questions",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Rewards & wallet explained",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                    color: Colors.black87,
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text(
                    "More help",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.only(top: 20, left: 20, right: 15),
              children: [
                Text("Account activity and policies",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Confirm your booking and account activity . and learn about important Kunggy policies",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Account activity",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push and SMS",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Guest policies",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push and SMS",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 10),
                Text("Remainders",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "get important remainders about your resrevations, listings, and account activity.",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Remainders",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push and SMS",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),

                ///
                ///
                ///
                ///
                ///
                ///
                SizedBox(height: 10),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 10),
                Text("Guest and Host messages",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Keep in touch with your Host or guests before and during your trip",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Messages",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "On:Email and Push and SMS",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
