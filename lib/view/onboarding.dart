import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          buildPage('Track Your Expenses', 'Stay on top of your spending.'),
          buildPage(
              'AI-Powered Insights', 'Get predictions and recommendations.'),
          buildPage(
              'Achieve Financial Goals', 'Start planning your future now.'),
        ],
      ),
      bottomSheet: currentIndex == 2
          ? TextButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: Text('Get Started'),
            )
          : TextButton(
              onPressed: () {
                _controller.nextPage(
                    duration: Duration(milliseconds: 300), curve: Curves.ease);
              },
              child: Text('Next'),
            ),
    );
  }

  Widget buildPage(String title, String subtitle) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Text(subtitle, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
