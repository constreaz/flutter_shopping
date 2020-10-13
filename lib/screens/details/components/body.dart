import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'color_and_size.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        //height: 200,
        color: Colors.transparent,
        alignment: Alignment.center,
        //padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              //width: size.width,
              //height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        if (product.discount > 0)
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                border: Border.all(
                                  color: Colors.lightBlueAccent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              "${product.discount}%",
                              style: TextStyle(
                                  backgroundColor: Colors.lightBlueAccent,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        if (product.discount == 0)
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "",
                              style: TextStyle(
                                  backgroundColor: Colors.lightBlueAccent,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        Container(
                        padding: EdgeInsets.only(bottom: 30),
                        height: 220,
                        width: 240,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Image(
                              image: AssetImage(product.image),
                            ),
                          ],
                        ),
                        /*Image(
                            image: AssetImage(product.image),
                          ),*/
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          height: 10,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    product.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                            color: Colors.deepPurple,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            onRated: (v) {},
                                            starCount: 1,
                                            rating: product.rating,
                                              size: 20.0,
                                              isReadOnly: true,
                                              color: Colors.yellow,
                                              borderColor: Colors.yellowAccent,
                                              spacing: 1.0),
                                          Text(
                                            "(${product.rating})",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 30),
                                child: Text(
                                  product.description,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Size:  ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          border: Border.all(
                                            color: Colors.lightBlueAccent,
                                          ),
                                          borderRadius:
                                          BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Text(
                                        " US ${product.size}  ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    for (int i = 1; i < 4; i++)
                                      Container(
                                        padding: EdgeInsets.only(left:20),
                                        child: Text(
                                          " US ${product.size + i}  ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 30),
                                child:
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Available Color:",
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, bottom: 22),
                                  child:
                                  Row(
                                    children: <Widget>[
                                      SizedBox(width: 12, height: 5),
                                      ColorDot(
                                        color: Colors.yellow,
                                        isSelected: true,
                                      ),
                                      SizedBox(width: 12, height: 5),
                                      ColorDot(
                                        color: Colors.red,
                                        isSelected: true,
                                      ),
                                      SizedBox(width: 12, height: 5),
                                      ColorDot(
                                        color: Colors.purple,
                                        isSelected: true,
                                      ),
                                      SizedBox(width: 12, height: 5),
                                      ColorDot(
                                        color: Colors.blue,
                                        isSelected: true,
                                      ),
                                    ],
                                  ),
                                ),
                                  ],
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                  ),
                                ),
                                child:
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "\$ ${product.price}",
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .headline4
                                            .copyWith(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Container(
                                        //padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          border: Border.all(
                                            color: Colors.black12,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              24),
                                        ),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              IconButton(icon: Icon(
                                                  Icons.shopping_cart,
                                                  color: Colors
                                                      .deepPurpleAccent),
                                                  onPressed: null),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 15, right: 5
                                                ),
                                                child:
                                                Text(
                                                  "Add To Cart",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      color: Colors
                                                          .deepPurpleAccent),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                    ),
                  ),
                ],
              ),
              /*Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.32),
                  padding: EdgeInsets.only(
                    top: size.height * 0,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ), */
            )


    );
  }
}
