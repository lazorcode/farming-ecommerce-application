import 'package:ecommerce/constants/onboarding/ob1.dart';
import 'package:ecommerce/constants/onboarding/ob2.dart';
import 'package:ecommerce/constants/onboarding/on3.dart';
import 'package:ecommerce/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding-screen';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) => {
            setState(() {
              onLastPage = (index == 2);
            })
          },
          children: [OBScreen1(), OBScreen2(), OBScreen3()],
        ),
        Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('Skip')),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 12.0,
                      dotHeight: 8.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.indigo),
                ),
                onLastPage
                    ? TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AuthScreen();
                          }));
                        },
                        child: Text('Done'))
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 230),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next'))
              ],
            ))
      ],
    ));
  }
}
