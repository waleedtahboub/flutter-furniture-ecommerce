import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class HeadSection extends StatefulWidget {
  const HeadSection({super.key, required this.product});
  final ProductModel product;
  @override
  State<HeadSection> createState() => _HeadSectionState();
}

class _HeadSectionState extends State<HeadSection> {
  final PageController pageController = PageController(initialPage: 0);

  int activePicture = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Currently ProductModel has one imageUrl. We use a list to make it dynamic.
    final List<String> images = [widget.product.imageUrl];

    return SizedBox(
      width: double.infinity,
      height: 348,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: images.length,
            onPageChanged: (value) {
              setState(() {
                activePicture = value;
              });
            },
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: images[index],
                fit: BoxFit.cover,
              );
            },
          ),

          const SizedBox(height: 5),

          if (images.length > 1)
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(images.length, (index) {
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
