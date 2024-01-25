import 'package:flutter/material.dart';

class BannerPageView extends StatefulWidget {
  final PageController controller;
  const BannerPageView({super.key, required this.controller});

  @override
  State<BannerPageView> createState() => _BannerPageViewState();
}

class _BannerPageViewState extends State<BannerPageView> {
  final List<String> _images = <String>[
    'assets/images/a1.png',
    'assets/images/a2.png',
    'assets/images/a3.png',
    'assets/images/a4.png',
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: <Widget>[
        bannerView(_images[0]),
        bannerView(_images[1]),
        bannerView(_images[2]),
        bannerView(_images[3]),
      ],
    );
  }

  Widget bannerView(String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
