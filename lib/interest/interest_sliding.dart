import 'dart:async'; // Import this for the Timer
import 'package:activity_laboratory/interest/interest_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:activity_laboratory/interest/interest_slider.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late final PageController _pageController;
  late final Timer _timer;

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1000);

    // Set up the timer for auto-play
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              _pageIndex = value % data.length;
            });
          },
          controller: _pageController,
          itemBuilder: (context, index) {
            final i = index % data.length;
            return HomeSliderItem(
              isActive: _pageIndex == i,
              imageAssetPath: data[i]['imageAssetPath']!,
              category: data[i]['category']!,
              title: data[i]['title']!,
              description: data[i]['description']!,
            );
          }),
    );
  }
}
