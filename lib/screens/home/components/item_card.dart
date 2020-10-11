import 'package:flutter/material.dart';
import 'package:shop_app/favorite.dart';
import 'package:shop_app/models/Product.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              if (product.discount > 0)
                Text(
                  "${product.discount}%",
                  style: TextStyle(
                      backgroundColor: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              if (product.discount == 0)
                Text(
                  "",
                  style: TextStyle(
                      backgroundColor: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FavoriteWidget(),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(color: product.color, shape: BoxShape.circle),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 8),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(fontSize: 18, color: Colors.deepPurple),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent),
          ),
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
                  spacing: 1.0
              ),
              Text(
                "(${product.rating})",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
