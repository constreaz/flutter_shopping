import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        Container(
          padding: EdgeInsets.all(0),
          child:
          IconButton(
            icon: (_isFavorite ? Icon(Icons.favorite_rounded, color: Colors.red) : Icon(Icons.favorite, color: Colors.black12)),
            onPressed: _toggleFavorite,
          ),
        ),
      ],
    );
  }
  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
}