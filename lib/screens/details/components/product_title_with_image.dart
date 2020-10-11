import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (product.discount > 0)
          Text(
            "${product.discount}%",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, backgroundColor: Colors.lightBlue),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  height: 180,
                  width: 240,
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
