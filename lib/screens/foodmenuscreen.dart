import 'package:flutter/material.dart';

import '../components/food_card.dart';
import '../components/full_food_menu_card.dart';

class FoodMenuScreen extends StatefulWidget {
  @override
  _FoodMenuScreenState createState() => _FoodMenuScreenState();
}

class _FoodMenuScreenState extends State<FoodMenuScreen> {
  TextEditingController searchController = TextEditingController();
  var _rating;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Darkhood's Food Menu",
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_input_component_outlined),
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ListView(
              children: [
                SizedBox(height: height * 0.007),
                Container(
                    height: 58,
                    margin: EdgeInsets.only(
                        left: width * 0.075, right: width * 0.05),
                    child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            hintText: "Search for a restaurant",
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
                              borderSide: BorderSide(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            )))),
                Container(
                  margin: EdgeInsets.only(
                      right: width * .39,
                      top: height * .035,
                      bottom: height * .013),
                  child: Text(
                    "What's your mood?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade100,
                              ),
                              child: Image.network(
                                  "https://media.istockphoto.com/photos/slice-of-pizza-isolated-on-white-background-picture-id1295596568?s=612x612"),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Quick bytes",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade100,
                              ),
                              child: Image.network(
                                "https://c8.alamy.com/comp/EB6WNG/a-pile-with-cheese-flavored-extruded-snacks-with-different-shapes-EB6WNG.jpg",
                                height: 40,
                                width: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " Snacks",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade200,
                              ),
                              child: Image.network(
                                "https://media.istockphoto.com/photos/delicious-spicy-chicken-biryani-in-traditional-bowl-on-white-indian-picture-id1215601624?k=20&m=1215601624&s=170667a&w=0&h=8nbctisHFBnaA5Um5Oq3cfkVnHxe4unOnEDSCW85hI0=",
                                height: 40,
                                width: 40,
                              ),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Briyani",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade100,
                              ),
                              child: Image.network(
                                  "https://c4.wallpaperflare.com/wallpaper/90/519/645/dish-chicken-legs-lettuce-onions-wallpaper-preview.jpg"),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " Chicken Dish",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade100,
                              ),
                              child: Image.network(
                                  "https://thumbs.dreamstime.com/b/various-cocktails-21614363.jpg"),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Drinks",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade100,
                              ),
                              child: Image.network(
                                  "https://previews.123rf.com/images/lestertair/lestertair1203/lestertair120300266/12944352-two-berry-cream-dessert-on-a-white-background.jpg"),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Deserts",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: width * .63,
                      top: height * .035,
                      bottom: height * .013),
                  child: Text(
                    "Featured",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FoodCard(
                              image:
                                  "https://media.istockphoto.com/photos/fresh-homemade-pizza-margherita-picture-id1278998606?s=612x612",
                              name: "Hot Cheese Pizza",
                              time: "1.2 min from you"),
                          FoodCard(
                            image:
                                "https://media.istockphoto.com/photos/mango-lassi-yogurt-or-smoothie-healthy-probiotic-cold-summer-picture-id1187066433?s=612x612",
                            name: "Creamy Lassi",
                            time: "5 min from here",
                          )
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(
                    right: width * .53,
                    top: height * .035,
                  ),
                  child: Text(
                    "More Options",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(color: Colors.black),
                Column(
                  children: [
                    FullFoodMenuCard(),
                    FullFoodMenuCard(),
                    FullFoodMenuCard()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
