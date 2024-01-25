import 'package:flutter/material.dart';
import 'package:provider_test_project/pages/watchlist_page.dart';
import 'package:provider_test_project/widgets/bottom_navigation_bar.dart';

import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../pages/market_view_page.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {},
        child: const Icon(Icons.compare_arrows_rounded),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(pageController: _pageController),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomePage(),
          const MarketViewPage(),
          const WatchListPage(),
          const ProfilePage(),
        ],
      ),
    );
  }
}
