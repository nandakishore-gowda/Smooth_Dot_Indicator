import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_dot_indicator/pages/page_1.dart';
import 'package:smooth_dot_indicator/pages/page_2.dart';
import 'package:smooth_dot_indicator/pages/page_3.dart';
import 'package:smooth_dot_indicator/pages/page_4.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.yellow.shade100,
              dotColor: Colors.yellow.shade300,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              //verticalOffset: 50,
              jumpScale: 3,
            ),
          ),
        ],
      ),
    );
  }
}