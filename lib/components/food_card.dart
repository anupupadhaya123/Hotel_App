import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodCard extends StatefulWidget {
  final image;
  final name;
  final time;
  FoodCard({this.image, this.name, this.time});
  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  var _rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(6, 8, 6, 5),
        child: Container(
          height: 180,
          width: 230,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                widget.image,
              ).image,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              ),
              Container(
                width: 250,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            widget.time,
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Colors.black45,
                              fontSize: 13,
                            ),
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
                            itemSize: 25,
                            onRatingUpdate: (rating) {
                              _rating = rating;
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
