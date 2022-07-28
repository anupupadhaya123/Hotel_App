import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(top: 20, left: 30),
        children: [
          Text("Inbox",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Messages",
            style: TextStyle(fontSize: 16),
          ),
          Divider(
            thickness: 2,
          ),
          Text("You have no unread messages",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            "when you contact a host or send a reservation request , you'll find your messages here.",
            style: TextStyle(fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
