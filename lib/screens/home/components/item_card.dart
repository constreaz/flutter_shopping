import 'package:flutter/material.dart';
import 'package:shop_app/favorite.dart';
import 'package:shop_app/models/Product.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        //height: 200,
        padding: EdgeInsets.only(top: 0, bottom: 10, right: 0, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.black12,
          border: Border.all(
            color: Colors.white30,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Container(
                margin: EdgeInsets.only(right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (product.discount > 0)
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Text(
                          "${product.discount}%",
                          style: TextStyle(
                              backgroundColor: Colors.blueAccent,
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: FavoriteWidget(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                //padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 10),
                //height: 200,
                //width: 200,
                //decoration: BoxDecoration(color: product.color, shape: BoxShape.circle),
                child: Image(
                  image: AssetImage(product.image),
                  //width: 180,
                  //height: 160,//MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
                /*Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image),
                ),*/
              ),
            ),
            Padding(
              //padding: EdgeInsets.all(10),
              padding: EdgeInsets.only(bottom: 10),
              //const EdgeInsets.symmetric(vertical: kDefaultPadding / 8),
              child: Text(
                // products is out demo list
                product.title,
                style: TextStyle(fontSize: 18, color: Colors.deepPurple),
              ),
            ),
            Text("\$" +
              "\$${product.price}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 5,
                    rating: product.rating,
                    size: 20.0,
                    isReadOnly: true,
                    color: Colors.yellow,
                    borderColor: Colors.yellowAccent,
                    spacing: 1.0),
                Text(
                  "(${product.rating})",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
