import 'package:flutter/material.dart';
import 'package:kunggy/constants/constants.dart';
import 'package:kunggy/screens/hotel_detail.dart';

import '../components/hotel_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://resofrance.eu/wp-content/uploads/2018/09/hotel-luxe-mandarin-oriental-paris.jpg",
      "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
      "https://images.squarespace-cdn.com/content/v1/57d5245815d5db80eadeef3b/1558864684068-1CX3SZ0SFYZA1DFJSCYD/ke17ZwdGBToddI8pDm48kIpXjvpiLxnd0TWe793Q1fcUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcZwk0euuUA52dtKj-h3u7rSTnusqQy-ueHttlzqk_avnQ5Fuy2HU38XIezBtUAeHK/Marataba+Safari+lodge",
      "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
      "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
      "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
      "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
      "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
      "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
      "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset('images/homepage.jpg'),
              const Padding(
                padding: EdgeInsets.only(top: 150.0),
                child: Center(
                    child: Text('Not sure where to go ?',
                        style: TextStyle(
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ))),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 450.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kBackgroundColor,
                      onPrimary: kPrimaryColor,
                      onSurface: kPrimaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      minimumSize: const Size(130, 50),
                    ),
                    onPressed: () {},
                    child: const Text("I'm flexible",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ]),

            Container(
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 20.0),
                child: Text('Popular',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
              ),
            ),

            // ignore: sized_box_for_whitespace
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //Now let's add and test our first card
                  hotelCard(urls[0], "Luxary Hotel", "Caroline", 3),
                  hotelCard(urls[5], "Plaza Hotel", "Italy", 4),
                  hotelCard(urls[2], "Safari Hotel", "Africa", 5),
                  hotelCard(urls[6], "Visit Rome", "Italy", 4),
                  hotelCard(urls[8], "Visit Sidi bou Said", "Tunsia", 4),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BuildBottomNavBar(),
    );
  }
}

class BuildBottomNavBar extends StatelessWidget {
  const BuildBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: kUnselectedColor,
      selectedItemColor: kPrimaryColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: "BookMark",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: "Destination",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: "Profile",
        ),
      ],
    );
  }
}
