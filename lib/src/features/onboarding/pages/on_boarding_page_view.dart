import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/onboarding/pages/page1.dart';
import 'package:furniture_store_app/src/features/onboarding/pages/page2.dart';
import 'package:furniture_store_app/src/features/onboarding/pages/page3.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});
  static const String routePath = '/onboarding';

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  final PageController pageController = PageController(initialPage: 0);
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      Page1(pageController: pageController),
      Page2(pageController: pageController),
      Page3(pageController: pageController),
    ];
  }

  int activePage = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, index) {
              return pages[index];
            },
            itemCount: pages.length,
            controller: pageController,
          ),

          Positioned(
            bottom: 180,
            left: 0,
            right: 0,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(pages.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: InkWell(
                      onTap: () {
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: activePage == index
                            ? AppColor.primary
                            : AppColor.skaGray,
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
