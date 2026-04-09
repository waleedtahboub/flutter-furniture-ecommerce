import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';
import 'package:furniture_store_app/src/features/home/provider/home_provider.dart';

class PageViewHeadSection extends ConsumerStatefulWidget {
  const PageViewHeadSection({super.key});

  @override
  ConsumerState<PageViewHeadSection> createState() =>
      _PageViewHeadSectionState();
}

class _PageViewHeadSectionState extends ConsumerState<PageViewHeadSection> {
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
    final homeState = ref.watch(homeProvider);
    return homeState.when(
      data: (data) {
        return Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              width: 370,
              height: 146,
              child: PageView.builder(
                controller: pageController,
                itemCount: data.banners.length,
                onPageChanged: (value) {
                  setState(() {
                    activePicture = value;
                  });
                },
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: data.banners[index].imageUrl,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(data.banners.length, (index) {
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
      },
      error: (error, stackTrace) {
        return Text('ERROR loading home page $error');
      },
      loading: () {
        return const CircularProgressIndicator();
      },
    );
  }
}
