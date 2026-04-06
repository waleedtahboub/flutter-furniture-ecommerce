import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

class HeadSection extends StatefulWidget {
  const HeadSection({super.key});

  @override
  State<HeadSection> createState() => _HeadSectionState();
}

class _HeadSectionState extends State<HeadSection> {
  final PageController pageController = PageController(initialPage: 0);
  List<Widget> headSectionImages = [
    Image.network(CategoryType.diningRoom.imageUrl, fit: BoxFit.fill),
    Image.network(CategoryType.bedrooms.imageUrl, fit: BoxFit.cover),
    Image.network(CategoryType.guestsRoom.imageUrl, fit: BoxFit.cover),
  ];
  int activePicture = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 348,
      child: Stack(
        children: [
          PageView.builder(
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

          const SizedBox(height: 5),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,

            child: Row(
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
          ),
        ],
      ),
    );
  }
}
