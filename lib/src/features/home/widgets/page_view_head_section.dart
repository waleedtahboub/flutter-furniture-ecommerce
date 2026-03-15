import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

class PageViewHeadSection extends StatefulWidget {
  const PageViewHeadSection({super.key});

  @override
  State<PageViewHeadSection> createState() => _PageViewHeadSectionState();
}

class _PageViewHeadSectionState extends State<PageViewHeadSection> {
  final PageController pageController = PageController(initialPage: 0);
  List<Widget> headSectionImages = [
    Image.asset(CategoryType.diningRoom.imagePath, fit: BoxFit.fill),
    Image.asset(CategoryType.bedrooms.imagePath, fit: BoxFit.cover),
    Image.asset(CategoryType.guestsRoom.imagePath, fit: BoxFit.cover),
  ];
  int activePicture = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          width: 370,
          height: 146,
            child: PageView.builder(
              controller: pageController,
              itemCount: headSectionImages.length,
              onPageChanged: (value) {
                setState(() {
                  activePicture = value;
                });
              },
              itemBuilder: (context, index) {
                return headSectionImages[index];
              },
            ),
          ),
          const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(headSectionImages.length, (index) {
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
                    backgroundColor: activePicture == index
                        ? AppColor.primary
                        : AppColor.skaGray,
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

class PageViewHeadSection extends StatefulWidget {
  const PageViewHeadSection({super.key});

  @override
  State<PageViewHeadSection> createState() => _PageViewHeadSectionState();
}

class _PageViewHeadSectionState extends State<PageViewHeadSection> {
  final PageController pageController = PageController(initialPage: 0);
  List<Widget> headSectionImages = [
    Image.asset(CategoryType.diningRoom.imagePath, fit: BoxFit.fill),
    Image.asset(CategoryType.bedrooms.imagePath, fit: BoxFit.cover),
    Image.asset(CategoryType.guestsRoom.imagePath, fit: BoxFit.cover),
  ];
  int activePicture = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          width: 370,
          height: 146,
          child: PageView.builder(
            controller: pageController,
            itemCount: headSectionImages.length,
            onPageChanged: (value) {
              setState(() {
                activePicture = value;
              });
            },
            itemBuilder: (context, index) {
              return headSectionImages[index];
            },
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(headSectionImages.length, (index) {
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
                    backgroundColor: activePicture == index
                        ? AppColor.primary
                        : AppColor.skaGray,
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
