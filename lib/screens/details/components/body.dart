import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

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
                    //margin: EdgeInsets.only(top: size.height * 0.32),
                    /*padding: EdgeInsets.only(
                      top: size.height * 0,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),*/
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
                          //padding: EdgeInsets.all(kDefaultPadding),
                          height: 220,
                          width: 240,
                          child: Image(
                            image: AssetImage(product.image),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
          ],
        ),
      ),
    );
  }
}
