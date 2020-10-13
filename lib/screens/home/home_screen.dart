import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _cIndex = 0;

  @override
  void initState() {
    super.initState();
    // Add splash screen here

    // Detect loggedIn status
  }

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          unselectedItemColor: Colors.black38,
          selectedItemColor: Colors.deepPurpleAccent,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.event_note), title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: new Text('')),
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: new Icon(Icons.menu, size: 24.0),
        color: Colors.black87,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }

}
