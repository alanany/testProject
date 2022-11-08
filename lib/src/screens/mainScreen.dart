// @dart=2.9

import 'package:flutter/material.dart';
import 'package:testproject/src/screens/tabsScreens/cartScreen.dart';
import 'package:testproject/src/screens/tabsScreens/favoriteScreen.dart';
import 'package:testproject/src/screens/tabsScreens/homeScreen.dart';
import 'package:testproject/src/screens/tabsScreens/newsScreen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main';

  MainScreen({Key key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPage;
  @override
  @override
  void didChangeDependencies() {
    _currentPage = 0;

    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: getPage(_currentPage),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFFd93e11),
        isExtended: true,
        onPressed: () {},
        child: Center(
            child: Text(
          r'3$',
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomNavigationView(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
    );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return const HomeScreen();
      case 1:
        return const FavoritesScreen();
      case 2:
        return const NewsScreen();
      case 3:
        return const CartScreen();
    }
  }
}

class BottomNavigationView extends StatefulWidget {
  final int currentIndex;
  final Function(int) onChange;
  const BottomNavigationView({Key key, this.currentIndex, this.onChange})
      : super(key: key);

  @override
  _BottomNavigationViewState createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0XFFf4f9fa),
        boxShadow: [
          BoxShadow(
            color: Color(0X296F6F6F),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    widget.onChange(0);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 7,
                    ),
                    Icon(Icons.home,
                        size: 25,
                        color: widget.currentIndex == 0
                            ? Color(0XFFd93e11)
                            : Color(0XFF949494)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Grocery',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: widget.currentIndex == 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: widget.currentIndex == 0
                                ? Color(0XFFd93e11)
                                : Color(0XFF949494),
                            letterSpacing: .4)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.onChange(1);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 7,
                    ),
                    Icon(Icons.notifications_none,
                        size: 25,
                        color: widget.currentIndex == 1
                            ? Color(0XFFd93e11)
                            : Color(0XFF949494)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('News',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: widget.currentIndex == 1
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: widget.currentIndex == 1
                                ? Color(0XFFd93e11)
                                : Color(0XFF949494),
                            letterSpacing: .4)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.onChange(2);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 7,
                    ),
                    Icon(Icons.favorite_border,
                        size: 25,
                        color: widget.currentIndex == 2
                            ? Color(0XFFd93e11)
                            : Color(0XFF949494)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Favorites',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: widget.currentIndex == 2
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: widget.currentIndex == 2
                                ? Color(0XFFd93e11)
                                : Color(0XFF949494),
                            letterSpacing: .4)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.onChange(3);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 7,
                    ),
                    Icon(Icons.wallet_membership,
                        size: 25,
                        color: widget.currentIndex == 3
                            ? Color(0XFFd93e11)
                            : Color(0XFF949494)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Cart',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: widget.currentIndex == 3
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: widget.currentIndex == 3
                                ? Color(0XFFd93e11)
                                : Color(0XFF949494),
                            letterSpacing: .4)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
