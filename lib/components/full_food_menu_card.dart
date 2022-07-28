import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FullFoodMenuCard extends StatefulWidget {
  const FullFoodMenuCard({Key? key}) : super(key: key);

  @override
  _FullFoodMenuCardState createState() => _FullFoodMenuCardState();
}

class _FullFoodMenuCardState extends State<FullFoodMenuCard> {
  var _rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 240,
                height: 210,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.8, -0.7),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.crop_square_rounded,
                                  color: Colors.green,
                                  size: 30,
                                ),
                                Icon(Icons.circle,
                                    color: Colors.green, size: 14),
                              ],
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              height: 20,
                              width: 90,
                              child: ElevatedButton(
                                  child: Text("BestSeller",
                                      style: TextStyle(fontSize: 10)),
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              side:
                                                  BorderSide(color: Colors.red)))),
                                  onPressed: () => null),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Text('Chocoholic cake',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 4),
                        child: Text(
                          'In Cakes',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Text('\$375',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 8),
                        child: Text(
                          'three layers of chocolates mousse:white, milk and dark chocolate..Read more',
                          style: TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 160,
                              child: TextButton(
                                  child: Row(
                                    children: [
                                      RatingBar(
                                        ratingWidget: RatingWidget(
                                          full: Icon(
                                            Icons.star,
                                            color: Colors.red,
                                          ),
                                          half: Icon(
                                            Icons.star,
                                            color: Colors.red,
                                          ),
                                          empty: Icon(
                                            Icons.star_border,
                                            color: Colors.red,
                                          ),
                                        ),
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemCount: 5,
                                        itemSize: 20,
                                        onRatingUpdate: (rating) {
                                          _rating = rating;
                                        },
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "9780",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900),
                                      )
                                    ],
                                  ),
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              side: BorderSide(
                                                  color: Colors.black26)))),
                                  onPressed: () => null),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 140,
                height: 200,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.2, -0.4),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 10, 10, 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://previews.123rf.com/images/robynmac/robynmac1508/robynmac150800005/43763784-%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EB%A9%8B%EC%A7%84-%EC%B4%88%EC%BD%9C%EB%A6%BF-%EC%BC%80%EC%9D%B4%ED%81%AC-%EC%A0%84%EC%B2%B4-.jpg',
                            height: 100,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Container(
                        height: 45,
                        width: 120,
                        child: TextButton(
                            child: Text("Add to cart".toUpperCase(),
                                style: TextStyle(fontSize: 12)),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(color: Colors.red)))),
                            onPressed: () => null),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),
        ],
      ),
    );
  }
}
