import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marquee/marquee.dart';
import 'package:provider_test_project/widgets/banner_pageview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _bannerPageController = PageController(initialPage: 0);

  int defaultChoiceIndex = 0;

  final List<String> _choicesList = <String>[
    'Top Market Cap',
    'Top Gainers',
    'Top Losers',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.home,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                  child: SizedBox(
                    height: 160.0,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        BannerPageView(controller: _bannerPageController),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: SmoothPageIndicator(
                              controller: _bannerPageController,
                              count: 4,
                              effect: const ExpandingDotsEffect(
                                dotColor: Colors.white70,
                                dotHeight: 10.0,
                                dotWidth: 10.0,
                              ),
                              onDotClicked: (int index) => _bannerPageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 30.0,
                  child: Marquee(
                    text: AppLocalizations.of(context)!.marquee.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.center,
                    blankSpace: 20.0,
                    startPadding: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade400,
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                          child: Text(AppLocalizations.of(context)!.buy),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade400,
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                          child: Text(AppLocalizations.of(context)!.sell),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Wrap(
                          spacing: 8.0,
                          children: List.generate(
                            _choicesList.length,
                            (int index) => ChoiceChip(
                              selectedColor: Theme.of(context).colorScheme.secondary,
                              label: Text(_choicesList[index]),
                              selected: defaultChoiceIndex == index,
                              onSelected: (value) {
                                setState(() {
                                  defaultChoiceIndex = value ? index : defaultChoiceIndex;
                                });
                              },
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
        ),
      ),
    );
  }
}
